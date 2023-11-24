
library(tidyverse)
library(Matrix)
source('smatrix.R')
source('CG-shrink.R')

## reading data
hour.all <- read.csv('hour.all.csv', header = TRUE)[,-1]

hour.all <- subset(hour.all, Freeway!= 'No5')
#View(subset(hour.all, Freeway == 'Elevated No1'))
#hour.all <- subset(hour.all, direction != 'E')
#hour.all <- subset(hour.all, direction != 'W')
#test <- subset(hour.all, Freeway== 'No5')

hour.all$Station.code <- as.numeric(as.factor(hour.all$Station))
hour.all$Freeway.code <- as.numeric(as.factor(hour.all$Freeway))
hour.all$Area.code <- as.numeric(as.factor(hour.all$Area))


## fixing the station codes
hour.all$Station.code <- sprintf("%03d", as.numeric(hour.all$Station.code))
hour.all$vehicle.type <- sprintf("%02d", as.numeric(hour.all$vehicle.type))

# hour.all.train <- hour.all %>%
#   dplyr::filter(date <=  ymd("2021-05-20")) 
# hour.all.test <- hour.all %>%
#   dplyr::filter(date >  ymd("2021-05-20")) 

hour.all$cat <- paste(hour.all$sensor, hour.all$direction, hour.all$vehicle.type,  hour.all$Station, hour.all$Freeway, hour.all$Area, hour.all$Region)
### removing just zero series
hour.all <- hour.all %>%
  group_by(cat) %>%
  filter(any(sum(traffic != 0)))
### removing 80% zero series
hour.all <- hour.all %>%
  group_by(cat) %>%
  filter(mean(traffic == 0) <= 0.8)
## sorting all the series
hour.all <- hour.all[order(hour.all$cat),]

### 

#hour.all <- read.csv('hour.all.clean.csv', header = TRUE)[,-1]

## number of series before removing No5 and 80 percent zero series: 1590 - # of series after removing No5 and 90 percent zero series 1591
hourmatrix <- hour.all$traffic %>%
  matrix(nrow = 20424, ncol = 1590) %>%
  as.data.frame() 


names <- unique(paste(substr(hour.all$Region, 1, 1), hour.all$Station.code,  hour.all$Freeway.code, hour.all$direction, hour.all$vehicle.type, sep = "")) 
colnames(hourmatrix) <- names


name_length <- str_length(names)
grouping_hts <- rbind(
  #Region
  str_sub(names, start = name_length - 7, end = name_length - 7),
  #Station
  str_sub(names, start = name_length - 7, end = name_length - 4),
  #Freeway
  str_sub(names, start = name_length - 3, end = name_length - 3),
  #Direction
  str_sub(names, start = name_length - 2, end = name_length - 2),
  #Vehicle
  str_sub(names, start = name_length - 1, end = name_length),
  #Region x Direction
  paste(str_sub(names, start = name_length - 7, end = name_length - 7), str_sub(names, start = name_length - 2, end = name_length - 2), sep = ""),
  #Region x Freeway
  paste(str_sub(names, start = name_length - 7, end = name_length - 7), str_sub(names, start = name_length - 3, end = name_length - 3), sep = ""),
  #Region x Vehicle
  paste(str_sub(names, start = name_length - 7, end = name_length - 7), str_sub(names, start = name_length - 1, end = name_length), sep = ""),
  #Freeway x Direction
  paste(str_sub(names, start = name_length - 3, end = name_length - 3), str_sub(names, start = name_length - 2, end = name_length - 2), sep = ""),
  #Freeway x Vehicle
  paste(str_sub(names, start = name_length - 3, end = name_length - 3), str_sub(names, start = name_length - 1, end = name_length), sep = ""),
  #Vehicle x Direction
  paste(str_sub(names, start = name_length - 1, end = name_length), str_sub(names, start = name_length - 2, end = name_length - 2), sep = "")
)

library(hts)
hourgts <- gts(hourmatrix, groups = grouping_hts) 
gmat <- GmatrixG(hourgts$groups)
smatrix <- as.matrix(SmatrixM(gmat))

allyhourall <- aggts(hourgts) 


# holiday.1 <- allyhourall[433:984,]
# holiday.2 <- allyhourall[1057:1488,]
# holiday.3 <- allyhourall[1897:2328,]
# holiday.4 <- allyhourall[3433:3840,]
# holiday.5 <- allyhourall[5785:6192,]
# holiday.6 <- allyhourall[6433:6864,]
# holiday.7 <- allyhourall[8953:9456,]
# holiday.8 <- allyhourall[9817:10224,]
 holiday.9 <- allyhourall[10633:11064,]
# holiday.10 <- allyhourall[11329:11736,]
# holiday.11 <- allyhourall[12649:13080,]
# holiday.12 <- allyhourall[15001:15432,]
# holiday.13 <- allyhourall[15193:15600,]
# holiday.14 <- allyhourall[17209:17616,]
# holiday.15 <- allyhourall[18169:18672,]
# holiday.16 <- allyhourall[18577:18984,]
# holiday.17 <- allyhourall[19393:19824,]
# holiday.18 <- allyhourall[20065:20424,]

write.csv(holiday.9, 'holiday.9.csv')

allyholiday.9 <- forecast::msts(holiday.9, seasonal.periods=c(24,24*7))




# number of days in holidays
h1 <- 9; h2 <- 4; h3 <- 4; h4 <- 3; h5 <- 3; h6 <- 4; h7 <- 7; h8 <- 3; h9 <- 4; h10 <- 3; h11 <- 4; h12 <- 4; h13 <- 3; h14 <- 3; h15 <- 7; h16 <- 3; h17 <- 4; h18 <- 1
##
t <- 336
h <- 24
n <- t+(h*h9)
sim <- 2000

library(future.apply)
plan(multisession, workers = 7)
result.all <- list()
sample.path <- list()
error.train.all <- NULL
start.time <- Sys.time()
for(j in 1:ncol(allyholiday.9)){
  result <- NULL
  sample.test <- NULL
  error.train <- NULL
  fc.test <- NULL
  for(i in 0:((n-t-h)/h)){
    train <- window(allyholiday.9[,j], start = c(1, ((i*h)+1)), end = c(1, (t + (i*h))))
    valid <- window(allyholiday.9[,j], start = c(1,( t + (i*h) + 1)), end = c(1, (t + (i*h) +h)))
    f.model <- auto.arima(train,  seasonal.test = "ocsb", xreg=fourier(train, K = c(3,2))) 
    f.error.train <- as.data.frame(c(train)) - as.data.frame(c(forecast(f.model, xreg=fourier(train, K = c(3,2)))$mean))
    f.fc.test <- forecast(f.model, xreg=fourier(train,K=c(3,2), h = h))$mean
    sample.paths <- matrix(NA, ncol = sim, nrow =  h)
    for (g in 1:sim) {
      #set.seed(g)
      sample.paths[,g] <- simulate(f.model, future = TRUE, nsim=h, xreg=fourier(train,K=c(3,2), h = h))
    }
    sample.test <- rbind(sample.test, sample.paths)
    fc.test <- rbind(fc.test, as.data.frame(c(f.fc.test)))
    error.train <- rbind(error.train, f.error.train)
    print(j)
  }
  result.all[[length(result.all)+1]] <- fc.test
  sample.path[[length(sample.path)+1]] <- sample.test
  error.train.all <- bind_cols(error.train.all, error.train)
}
end.time <- Sys.time()
time.taken.base <- end.time - start.time

#### saving results
fc.arima <- matrix(NA, ncol = ncol(allyholiday.9), nrow = nrow(result.all[[1]]))
for(i in 1:ncol(allyholiday.9)){
  fc.arima[,i] <- result.all[[i]][,1]
}

write.csv(fc.arima, 'fc.arima.unrec.9.csv')



## reconcile sample paths

library(rio)
mydataf <- lapply(1:ncol(sample.path[[1]]), function(y) as.data.frame(sapply(sample.path, function(x) x[, y])))
# name the data frames

names(mydataf) <- 1:length(mydataf)

fc.arima.res <- list()

for(i in 0:(h9-1)){
  fc.arima.res[[i+1]] <- error.train.all[(1+((t-h)*i)):((t-h)+((t-h)*i)),]
}

library(Matrix)

list.G <- list()
for(i in 1:length(fc.arima.res)){
  res <- as.matrix(fc.arima.res[[i]])
  n1 <- nrow(res)
  covm <- crossprod(stats::na.omit(res)) / n1
  tar <- diag(apply(res, 2, compose(crossprod, stats::na.omit))/n1)
  corm <- cov2cor(covm)
  xs <- scale(res, center = FALSE, scale = sqrt(diag(covm)))
  xs <- xs[stats::complete.cases(xs),]
  v <- (1/(n1 * (n1 - 1))) * (crossprod(xs^2) - 1/n1 * (crossprod(xs))^2)
  diag(v) <- 0
  corapn <- cov2cor(tar)
  d <- (corm - corapn)^2
  lambda <- sum(v)/sum(d)
  lambda <- max(min(lambda, 1), 0)
  W <- lambda * tar + (1 - lambda) * covm
  gmat <- GmatrixG(hourgts$groups)
  smatrix <- as.matrix(SmatrixM(gmat))
  R <- t(smatrix)%*%solve(W)
  P <- Matrix::solve(R%*%smatrix)%*%R
  SP <- smatrix%*%P
  list.G[[length(list.G)+1]] <- SP
  print(i)
}

list.sample.rec <- list()
for(i in 1:length(mydataf)){
  fit.test <- split(mydataf[[i]], rep(1:h9,each=(h)))
  result.path <- NULL
  for(j in 1:length(list.G)){
    fc.rec <- matrix(NA, nrow = h, ncol = ncol(fc.arima.res[[1]]))
    for(k in 1:nrow(fit.test[[1]])){
      f.1 <- matrix(as.numeric(fit.test[[j]][k,]), ncol = 1, nrow = ncol(fit.test[[1]]))
      fc.rec [k,] <- list.G[[j]] %*% f.1
    }
    result.path <- bind_rows(result.path, as.data.frame(fc.rec))
  }
  list.sample.rec[[length(list.sample.rec)+1]] <- result.path
  print(i)
}


# name the data frames

names(list.sample.rec) <- 1:length(list.sample.rec)

mydataf2 <- lapply(1:ncol(list.sample.rec[[1]]), function(y) as.data.frame(sapply(list.sample.rec, function(x) x[, y])))

level = 95
quan975 <- matrix(NA, ncol = length(mydataf2), nrow = nrow(mydataf2[[1]]))

for(i in 1:length(mydataf2)){
  quan975[,i] <-  apply(mydataf2[[i]], 1, quantile, probs = (.5 + level / 200))
}

quan25 <- matrix(NA, ncol = length(mydataf2), nrow = nrow(mydataf2[[1]]))

for(i in 1:length(mydataf2)){
  quan25[,i] <-  apply(mydataf2[[i]], 1, quantile, probs= (.5 - level / 200))
}

level = 90
quan95 <- matrix(NA, ncol = length(mydataf2), nrow = nrow(mydataf2[[1]]))

for(i in 1:length(mydataf2)){
  quan95[,i] <-  apply(mydataf2[[i]], 1, quantile, probs= (.5 + level / 200))
}

quan05 <- matrix(NA, ncol = length(mydataf2), nrow = nrow(mydataf2[[1]]))

for(i in 1:length(mydataf2)){
  quan05[,i] <-  apply(mydataf2[[i]], 1, quantile, probs= (.5 - level / 200))
}

# slow option
# library(abind)
# test <- abind(list.sample.rec, along = 3)
# 
# quan05 <- apply(test, 1:2, function(x) quantile(x, probs = c(0.05)))
# quan95 <- apply(test, 1:2, function(x) quantile(x, probs = c(0.95)))
# quan975 <- apply(test, 1:2, function(x) quantile(x, probs = c(0.975)))
# quan25 <- apply(test, 1:2, function(x) quantile(x, probs = c(0.025)))


write.csv(quan05, 'quan05.arima-9.csv')
write.csv(quan95, 'quan95.arima-9.csv')
write.csv(quan975, 'quan975.arima-9.csv')
write.csv(quan25, 'quan25.arima-9.csv')


## Reconciling base forecasts
colnames(fc.arima) <- colnames(allyhourall)
fit.list <- list()
for(i in 0:(h9-1)){
  fit.list[[i+1]] <- fc.arima[(1+(h*i)):(h+(h*i)),]
}
fc.arima.res <- list()
for(i in 0:(h9-1)){
  fc.arima.res[[i+1]] <- error.train.all[(1+((t-h)*i)):((t-h)+((t-h)*i)),]
}


list <- list()
list.G <- list()
for(i in 1:length(fc.arima.res)){
  res <- as.matrix(fc.arima.res[[i]])
  n1 <- nrow(res)
  covm <- crossprod(stats::na.omit(res)) / n1
  tar <- diag(apply(res, 2, compose(crossprod, stats::na.omit))/n1)
  corm <- cov2cor(covm)
  xs <- scale(res, center = FALSE, scale = sqrt(diag(covm)))
  xs <- xs[stats::complete.cases(xs),]
  v <- (1/(n1 * (n1 - 1))) * (crossprod(xs^2) - 1/n1 * (crossprod(xs))^2)
  diag(v) <- 0
  corapn <- cov2cor(tar)
  d <- (corm - corapn)^2
  lambda <- sum(v)/sum(d)
  lambda <- max(min(lambda, 1), 0)
  W <- lambda * tar + (1 - lambda) * covm
  gmat <- GmatrixG(hourgts$groups)
  smatrix <- as.matrix(SmatrixM(gmat))
  R <- t(smatrix)%*%solve(W)
  P <- Matrix::solve(R%*%smatrix)%*%R
  SP <- smatrix%*%P
  
  fit.test <- fit.list[[i]]
  fc.rec <- matrix(NA, nrow = h, ncol = ncol(allyhourall))
  for(j in 1:nrow(fit.test)){
    f.1 <- matrix(as.numeric(fit.test[j,]), ncol = 1, nrow = ncol(fit.test))
    fc.rec [j,] <- SP %*% f.1
  }
  colnames(fc.rec) <- colnames(allyhourall) 
  list[[length(list)+1]] <- fc.rec
  list.G[[length(list.G)+1]] <- P
  print(i)
}

result.fit.all.rec <- do.call(rbind.data.frame, list)

write.csv(result.fit.all.rec, 'fc.arima.rec-9.csv')




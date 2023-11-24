
library(tidyverse)
library(Matrix)
source('olsfc.R')
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
# holiday.9 <- allyhourall[10633:11064,]
# holiday.10 <- allyhourall[11329:11736,]
# holiday.11 <- allyhourall[12649:13080,]
# holiday.12 <- allyhourall[15001:15432,]
# holiday.13 <- allyhourall[15193:15600,]
# holiday.14 <- allyhourall[17209:17616,]
# holiday.15 <- allyhourall[18169:18672,]
# holiday.16 <- allyhourall[18577:18984,]
# holiday.17 <- allyhourall[19393:19824,]
 holiday.18 <- allyhourall[20065:20424,]

write.csv(holiday.18, 'holiday.18.csv')

allyholiday.18 <- forecast::msts(holiday.18, seasonal.periods=c(24,24*7))




# number of days in holidays
h1 <- 9; h2 <- 4; h3 <- 4; h4 <- 3; h5 <- 3; h6 <- 4; h7 <- 7; h8 <- 3; h9 <- 4; h10 <- 3; h11 <- 4; h12 <- 4; h13 <- 3; h14 <- 3; h15 <- 7; h16 <- 3; h17 <- 4; h18 <- 1
##
t <- 336
h <- 24
n <- t+(h*h18)
sim <- 2000

library(future.apply)
plan(multisession, workers = 7)
result.all <- list()
sample.path <- list()
error.train.all <- NULL
start.time <- Sys.time()
for(j in 1:ncol(allyholiday.18)){
  result <- NULL
  sample.test <- NULL
  error.train <- NULL
  for(i in 0:((n-t-h)/h)){
    train <- window(allyholiday.18[,j], start = c(1, ((i*h)+1)), end = c(1, (t + (i*h))))
    valid <- window(allyholiday.18[,j], start = c(1,( t + (i*h) + 1)), end = c(1, (t + (i*h) +h)))
    # set.seed(123)
    fc <- olsfc_BPI_F(train, h, maxlag = h, nolag = c(1,h), sim = sim)
    sample.test <- rbind(sample.test, do.call(rbind, fc[[3]]))
    m <- data.frame(fc[[1]],apply(fc[[1]],2,as.numeric))[,4:6]
    result <- rbind(result, m)
    error.train <- bind_rows(error.train, as.data.frame(fc[[2]]))
    print(j)
  }
  result.all[[length(result.all)+1]] <- result
  sample.path[[length(sample.path)+1]] <- sample.test
  error.train.all <- bind_cols(error.train.all, error.train)
}
end.time <- Sys.time()
time.taken.base <- end.time - start.time

#### saving results
fc.OLS <- matrix(NA, ncol = ncol(allyholiday.18), nrow = nrow(result.all[[1]]))
for(i in 1:ncol(allyholiday.18)){
  fc.OLS[,i] <- result.all[[i]][,1]
}

write.csv(fc.OLS, 'fc.unrec.18.csv')


## saving unrec lwr
lw.OLS <- NULL
for(i in 1:length(result.all)){
  lw.OLS <- cbind(lw.OLS, result.all[[i]][,2])
}

write.csv(lw.OLS, 'lw.OLS.holiday18.csv')
## saving unrec upr
up.OLS <- NULL
for(i in 1:length(result.all)){
  up.OLS <- cbind(up.OLS, result.all[[i]][,3])
}

write.csv(up.OLS, 'up.OLS.holiday18.csv')
## saving unrec test set errors
actual <- tail(holiday.18, n-t)

error.holiday.18 <- actual - fc.OLS
write.csv(error.holiday.18, 'error.test.holiday.18.unrec.csv')

## reconcile sample paths

library(rio)
mydataf <- lapply(1:ncol(sample.path[[1]]), function(y) as.data.frame(sapply(sample.path, function(x) x[, y])))
# name the data frames

names(mydataf) <- 1:length(mydataf)

fc.OLS.res <- list()

for(i in 0:(h18-1)){
  fc.OLS.res[[i+1]] <- error.train.all[(1+((t-h)*i)):((t-h)+((t-h)*i)),]
}

library(Matrix)

start.time <- Sys.time()
list.G <- list()
for(i in 1:length(fc.OLS.res)){
  res <- as.matrix(fc.OLS.res[[i]])
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
  fit.test <- split(mydataf[[i]], rep(1:h18,each=(h)))
  result.path <- NULL
  for(j in 1:length(list.G)){
    fc.rec <- matrix(NA, nrow = h, ncol = ncol(fc.OLS.res[[1]]))
    for(k in 1:nrow(fit.test[[1]])){
      f.1 <- matrix(as.numeric(fit.test[[j]][k,]), ncol = 1, nrow = ncol(fit.test[[1]]))
      fc.rec [k,] <- list.G[[j]] %*% f.1
    }
    result.path <- bind_rows(result.path, as.data.frame(fc.rec))
  }
  list.sample.rec[[length(list.sample.rec)+1]] <- result.path
  print(i)
}

end.time <- Sys.time()
time.taken.sample.path.rec <- end.time - start.time
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


write.csv(quan05, 'quan05-18.csv')
write.csv(quan95, 'quan95-18.csv')
write.csv(quan975, 'quan975-18.csv')
write.csv(quan25, 'quan25-18.csv')


## Reconciling base forecasts
colnames(fc.OLS) <- colnames(allyhourall)
fit.list <- list()
for(i in 0:(h18-1)){
  fit.list[[i+1]] <- fc.OLS[(1+(h*i)):(h+(h*i)),]
}
fc.OLS.res <- list()
for(i in 0:(h18-1)){
  fc.OLS.res[[i+1]] <- error.train.all[(1+((t-h)*i)):((t-h)+((t-h)*i)),]
}


list <- list()
list.G <- list()
start.time <- Sys.time()
for(i in 1:length(fc.OLS.res)){
  res <- as.matrix(fc.OLS.res[[i]])
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
end.time <- Sys.time()
time.taken.fc.rec <- end.time - start.time

result.fit.all.rec <- do.call(rbind.data.frame, list)

write.csv(result.fit.all.rec, 'fc.OLS.rec-18.csv')


time.taken.base
time.taken.sample.path.rec
time.taken.fc.rec

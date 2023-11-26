
library(tidyverse)
library(forecast)
source('smatrix.R')
source('CG-shrink.R')

hour2021 <- read.csv('hour2021-final.csv', header = TRUE)
hour2021 <- subset(hour2021, Freeway!= 'No5')

hour2021$Station.code <- as.numeric(as.factor(hour2021$Station))
hour2021$Freeway.code <- as.numeric(as.factor(hour2021$Freeway))
hour2021$Area.code <- as.numeric(as.factor(hour2021$Area))


## fixing the station codes
hour2021$Station.code <- sprintf("%03d", as.numeric(hour2021$Station.code))
hour2021$vehicle.type <- sprintf("%02d", as.numeric(hour2021$vehicle.type))

hour2021$cat <- paste(hour2021$sensor, hour2021$direction, hour2021$vehicle.type,  hour2021$Station, hour2021$Freeway, hour2021$Area, hour2021$Region)
### removing just zero series
hour2021 <- hour2021 %>%
  group_by(cat) %>%
  filter(any(sum(traffic != 0)))
### removing 90% zero series
hour2021 <- hour2021 %>%
  group_by(cat) %>%
  filter(mean(traffic == 0) <= 0.8)



### 
## number of series before removing No5 and 80 percent zero series: 1590 - # of series after removing No5 and 90 percent zero series 1591
hourmatrix <- hour2021$traffic %>%
  matrix(nrow = 2880, ncol = 1590) %>%
  as.data.frame() 


names <- unique(paste(substr(hour2021$Region, 1, 1), hour2021$Station.code,  hour2021$Freeway.code, hour2021$direction, hour2021$vehicle.type, sep = "")) 
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

allyhour2021 <- aggts(hourgts) 
allyhour2021 <- forecast::msts(allyhour2021, seasonal.periods=c(24,24*7))

n <- 2880
t <- 240
h <- 24
sim <- 2000
library(future.apply)
plan(multisession, workers = 7)
result.all <- list()
sample.path <- list()
error.train.all <- NULL
start.time <- Sys.time()
for(j in 1:ncol(allyhour2021)){
  result <- NULL
  sample.test <- NULL
  error.train <- NULL
  fc.test <- NULL
  for(i in 0:((n-t-h)/h)){
    train <- window(allyhour2021[,j], start = c(1, ((i*h)+1)), end = c(1, (t + (i*h))))
    valid <- window(allyhour2021[,j], start = c(1,( t + (i*h) + 1)), end = c(1, (t + (i*h) +h)))
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
time.taken <- end.time - start.time

#### saving results
fc.ARIMA <- matrix(NA, ncol = ncol(allyhour2021), nrow = nrow(result.all[[1]]))
for(i in 1:ncol(allyhour2021)){
  fc.ARIMA[,i] <- result.all[[i]][,1]
}

write.csv(fc.ARIMA, 'fc.ARIMA.csv')


## error train
write.csv(error_train, 'error.train.ARIMA.csv')

## sample path
for(i in 1:length(sample.path)){
  write.csv(sample.path[[i]], paste0(i,".csv"))
}


library(rio)

mydataf <- lapply(1:ncol(sample.path[[1]]), function(y) as.data.frame(sapply(sample.path, function(x) x[, y])))


# name the data frames
names(mydataf) <- 1:length(mydataf)

fc.ARIMA.res <- list()
for(i in 0:(n-t-h)/h){
  fc.ARIMA.res[[i+1]] <- error.train.all[(1+((t-h)*i)):((t-h)+((t-h)*i)),]
}

library(Matrix)
start.time <- Sys.time()
list.G <- list()
for(i in 1:length(fc.ARIMA.res)){
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
  fit.test <- split(mydataf[[i]], rep(1:length(fc.OLS.res), each=(24)))
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

#library(abind)
#test <- abind(list.sample.rec, along = 3)

#quan05 <- apply(test, 1:2, function(x) quantile(x, probs = c(0.05)))
#quan95 <- apply(test, 1:2, function(x) quantile(x, probs = c(0.95)))
#quan975 <- apply(test, 1:2, function(x) quantile(x, probs = c(0.975)))
#quan25 <- apply(test, 1:2, function(x) quantile(x, probs = c(0.025)))

## Computing prediction intervals - 95% and 99%
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


write.csv(quan05, 'quan05.csv')
write.csv(quan95, 'quan95.csv')
write.csv(quan975, 'quan975.csv')
write.csv(quan25, 'quan25.csv')


## Reconciling base forecasts
colnames(fc.ARIMA) <- colnames(allyhour2021)
fit.list <- list()
for(i in 0:(n-t-h)/h){
  fit.list[[i+1]] <- fc.ARIMA[(1+(h*i)):(h+(h*i)),]
}

list <- list()
start.time <- Sys.time()
for(i in 1:length(fc.ARIMA.res)){
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

end.time <- Sys.time()
time.taken.forecast.rec <- end.time - start.time

result.fit.all.rec <- do.call(rbind.data.frame, list)

write.csv(result.fit.all.rec, 'fc.ARIMA.rec.csv')

### print computation times
time.taken.base
time.taken.sample.path.rec
time.taken.forecast.rec
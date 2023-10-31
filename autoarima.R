
library(tidyverse)
library(forecast)


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
## number of series before removing No5 and 90 percent zero series: 1675 - # of series after removing No5 and 90 percent zero series 1591
hourmatrix <- hour2021$traffic %>%
  matrix(nrow = 2880, ncol = 1590) %>%
  as.data.frame() 

#zerocol <- hourmatrix[,colSums(hourmatrix)==0]
names <- unique(paste(substr(hour2021$Region, 1, 1), hour2021$Station.code, hour2021$Freeway.code , hour2021$direction, hour2021$vehicle.type, sep = "")) 
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


allyhour2021 <- aggts(hourgts) 
allyhour2021 <- forecast::msts(allyhour2021, seasonal.periods=c(24,24*7))

n <- 2880
t <- 240
h <- 24
sim <- 2000

result.all <- list()
sample.path <- list()
#error.train.all <- NULL
start.time <- Sys.time()
error_train <- matrix(NA, ncol = ncol(allyhour2021), nrow = t)
for(j in 1:ncol(allyhour2021)){
  fc.test <- NULL
  sample.test <- NULL
  error.train <- NULL
  for(i in 0:((n-t-h)/h)){
    train <- window(allyhour2021[,j], start = c(1, ((i*h)+1)), end = c(1, (t + (i*h))))
    valid <- window(allyhour2021[,j], start = c(1,( t + (i*h) + 1)), end = c(1, (t + (i*h) +h)))
    #set.seed(123)
    f.model <- auto.arima(train,  seasonal.test = "ocsb", xreg=fourier(train, K = c(3,2))) 
    f.error.train <- resid(f.model)
    #f.error.train <- as.data.frame(c(train)) - as.data.frame(c(forecast(f.model, xreg=fourier(train, K = c(3,2)))$mean))
    f.fc.test <- forecast(f.model, xreg=fourier(train,K=c(3,2), h = h))$mean
    sample.paths <- matrix(NA, ncol = sim, nrow =  h)
    for (g in 1:sim) {
      sample.paths[,g] <- simulate(f.model, future = TRUE, nsim=h, xreg=fourier(train,K=c(3,2), h = h))
    }
    sample.test <- rbind(sample.test, sample.paths)
    fc.test <- rbind(fc.test, as.data.frame(c(f.fc.test)))
    error_train[,j] <- as.vector(f.error.train)
    print(j)
  }
  result.all[[length(result.all)+1]] <- fc.test
  sample.path[[length(sample.path)+1]] <- sample.test
}
end.time <- Sys.time()
time.taken <- end.time - start.time


write.csv(error_train, 'error.train5.csv')

fc.ARIMA <- matrix(NA, ncol = ncol(allyhour2021), nrow = nrow(result.all[[1]]))
for(i in 1:ncol(allyhour2021)){
  fc.ARIMA[,i] <- result.all[[i]][,1]
}


write.csv(fc.ARIMA, 'fc.ARIMA5.csv')
## saving unrec lwr




## saving sample paths
for(i in 1:length(sample.path)){
  write.csv(sample.path[[i]], paste0(i+510,".csv"))
}



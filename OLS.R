
library(tidyverse)
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


allyhour2021 <- aggts(hourgts) 
allyhour2021 <- forecast::msts(allyhour2021, seasonal.periods=c(24,24*7))

n <- 2880
t <- 240
h <- 24
sim <- 10
library(future.apply)
plan(multisession, workers = 7)
result.all <- list()
sample.path <- list()
error.train.all <- NULL
start.time <- Sys.time()
for(j in 1:ncol(allyhour2021)){
  result <- NULL
  sample.test <- NULL
  error_train <- matrix(NA, ncol = ncol(allyhour2021), nrow = t-h)
  for(i in 0:((n-t-h)/h)){
    train <- window(allyhour2021[,j], start = c(1, ((i*h)+1)), end = c(1, (t + (i*h))))
    valid <- window(allyhour2021[,j], start = c(1,( t + (i*h) + 1)), end = c(1, (t + (i*h) +h)))
    set.seed(123)
    fc <- olsfc_BPI_F(train, h, maxlag = h, nolag = c(1,h), sim = sim)
    sample.test <- rbind(sample.test, do.call(rbind, fc[[3]]))
    m <- data.frame(fc[[1]],apply(fc[[1]],2,as.numeric))[,4:6]
    result <- rbind(result, m)
    print(j)
  }
  result.all[[length(result.all)+1]] <- result
  sample.path[[length(sample.path)+1]] <- sample.test
  error_train[,j] <- fc[[2]]
  #error.train.all <- cbind(error.train.all, fc[[2]])
}
end.time <- Sys.time()
time.taken <- end.time - start.time

#### saving results
fc.OLS <- matrix(NA, ncol = ncol(allyhour2021), nrow = nrow(result.all[[1]]))
for(i in 1:ncol(allyhour2021)){
  fc.OLS[,i] <- result.all[[i]][,1]
}

write.csv(fc.OLS, 'fc.OLS.csv')



write.csv(error.train, 'error.train.OLS.csv')

for(i in 1:length(sample.path)){
  write.csv(sample.path[[i]], paste0(i,".csv"))
}




## codes and idea from https://www.kaggle.com/code/adithya44/anomaly-detection-with-time-series-forecasting
library(tidyverse)
library(forecast)
library(matrixcalc)

holiday.1.all <- read.csv('holiday.1.csv', header = TRUE)[,-1]
holiday.2.all <- read.csv('holiday.2.csv', header = TRUE)[,-1]
holiday.3.all <- read.csv('holiday.3.csv', header = TRUE)[,-1]
holiday.4.all <- read.csv('holiday.4.csv', header = TRUE)[,-1]
holiday.5.all <- read.csv('holiday.5.csv', header = TRUE)[,-1]
holiday.6.all <- read.csv('holiday.6.csv', header = TRUE)[,-1]
holiday.7.all <- read.csv('holiday.7.csv', header = TRUE)[,-1]
holiday.8.all <- read.csv('holiday.8.csv', header = TRUE)[,-1]
holiday.9.all <- read.csv('holiday.9.csv', header = TRUE)[,-1]
holiday.10.all <- read.csv('holiday.10.csv', header = TRUE)[,-1]
holiday.11.all <- read.csv('holiday.11.csv', header = TRUE)[,-1]
holiday.12.all <- read.csv('holiday.12.csv', header = TRUE)[,-1]
holiday.13.all <- read.csv('holiday.13.csv', header = TRUE)[,-1]
holiday.14.all <- read.csv('holiday.14.csv', header = TRUE)[,-1]
holiday.15.all <- read.csv('holiday.15.csv', header = TRUE)[,-1]
holiday.16.all <- read.csv('holiday.16.csv', header = TRUE)[,-1]
holiday.17.all <- read.csv('holiday.17.csv', header = TRUE)[,-1]
holiday.18.all <- read.csv('holiday.18.csv', header = TRUE)[,-1]


h1 <- 9; h2 <- 4; h3 <- 4; h4 <- 3; h5 <- 3; h6 <- 4; h7 <- 7; h8 <- 3; h9 <- 4; h10 <- 3; 
h11 <- 4; h12 <- 4; h13 <- 3; h14 <- 3; h15 <- 7; h16 <- 3; h17 <- 4; h18 <- 1



detect_classify_anomalies <- function(df, window) {
  df$error <- df$actuals - df$predicted
  df$percentage_change <- ((df$actuals - df$predicted) / df$actuals) * 100
  df$meanval <- zoo::rollmean(df$error, k = window, align = "right", fill = NA)
  df$deviation <- zoo::rollapply(df$error, width = window, FUN = sd, align = "right", fill = NA)
  df$`-3s` <- df$meanval - (2 * df$deviation)
  df$`3s` <- df$meanval + (2 * df$deviation)
  df$`-2s` <- df$meanval - (1.75 * df$deviation)
  df$`2s` <- df$meanval + (1.75 * df$deviation)
  df$`-1s` <- df$meanval - (1.5 * df$deviation)
  df$`1s` <- df$meanval + (1.5 * df$deviation)
  cut_list <- df[c("error", "-3s", "-2s", "-1s", "meanval", "1s", "2s", "3s")]
  cut_values <- as.matrix(cut_list)
  cut_sort <- apply(cut_values, 2, sort)
  df$impact <- sapply(seq_len(nrow(df)), function(x) which(cut_sort$error == df$error[x]))
  severity <- c(3, 2, 1, 0, 0, 1, 2, 3)
  region <- c("NEGATIVE", "NEGATIVE", "NEGATIVE", "NEGATIVE", "POSITIVE", "POSITIVE", "POSITIVE", "POSITIVE")
  df$color <- severity[df$impact + 1]
  df$region <- region[df$impact + 1]
  df$anomaly_points <- ifelse(df$color == 0|df$color == 1|df$color == 2|df$color == 3, df$error, NA)
  return(df)
}

t <- 336
h <- 24
n <- t+(h*h18)
window <- 3
allyholiday.18 <- forecast::msts(holiday.18.all, seasonal.periods=c(h,h*7))

## Region by Direction
n.series.R.D <- 8
series.R.D <- c(336, 337, 343, 342, 338, 339, 340, 341)
anom_final <- list()
for(i in 1:n.series.R.D){
  anom <- NULL
  for(j in 0:((n-t-h)/h)){
    train <- window(allyholiday.18[,series.R.D[i]], start = c(1, ((j*h)+1)), end = c(1, (t + (j*h))))
    valid <- window(allyholiday.18[,series.R.D[i]], start = c(1,( t + (j*h) + 1)), end = c(1, (t + (j*h) +h)))
    ## model using ARIMA
    f.model <- auto.arima(train,  seasonal.test = "ocsb", xreg=fourier(train, K = c(3,2))) 
    #f.error.train <- as.data.frame(c(train)) - as.data.frame(c(forecast(f.model, xreg=fourier(train, K = c(3,2)))$mean))
    f.fc.test <- forecast(f.model, xreg=fourier(train,K=c(3,2), h = h))$mean

    df <- cbind.data.frame('actuals' = valid, 'predicted' = f.fc.test)
    anom_df <- detect_classify_anomalies(df, window = window)
    anom_df$binary <- ifelse(anom_df$region == "POSITIVE", 1, 0)
    anomf <- anom_df$binary;   anomf[is.na(anomf)] <- 0
    anom <- rbind.data.frame(anom, as.data.frame(anomf))
  }
  anom_final[[length(anom_final) + 1]] <-  anom
}
anom_final <- do.call(cbind, anom_final)
colnames(anom_final) <- c('NRND', 'NRSD', 'NRED', 'NRWD', 'CRND', 'CRSD', 'SRND', 'SRSD')
## anomaly file by OLS
anom.18 <- read.csv('anom.18.R.D.csv', header = TRUE)[,-1]

anom_final <- cbind.data.frame('Date' = anom.18$Date, 'Time' = anom.18$Time, anom_final)

## compare the results of OLS by Unrec ARIMA

common_ones_zeros <- hadamard.prod(as.matrix(anom.18[,-c(1,2)]), as.matrix(anom_final[,-c(1,2)])) + 
  hadamard.prod((1-as.matrix(anom.18[,-c(1,2)])), (1-as.matrix(anom_final[,-c(1,2)])))

sum(common_ones_zeros ==1)/(nrow(common_ones_zeros)*ncol(common_ones_zeros))


## Highway by Direction

n.series.H.D <- 8
series.H.D <- c(366, 367, 373, 372, 369, 368, 371, 370)

anom_final <- list()
for(i in 1:n.series.H.D){
  anom <- NULL
  for(j in 0:((n-t-h)/h)){
    train <- window(allyholiday.18[,series.H.D[i]], start = c(1, ((j*h)+1)), end = c(1, (t + (j*h))))
    valid <- window(allyholiday.18[,series.H.D[i]], start = c(1,( t + (j*h) + 1)), end = c(1, (t + (j*h) +h)))
    ## model using ARIMA
    f.model <- auto.arima(train,  seasonal.test = "ocsb", xreg=fourier(train, K = c(3,2))) 
    #f.error.train <- as.data.frame(c(train)) - as.data.frame(c(forecast(f.model, xreg=fourier(train, K = c(3,2)))$mean))
    f.fc.test <- forecast(f.model, xreg=fourier(train,K=c(3,2), h = h))$mean
    
    df <- cbind.data.frame('actuals' = valid, 'predicted' = f.fc.test)
    anom_df <- detect_classify_anomalies(df, window = window)
    anom_df$binary <- ifelse(anom_df$region == "POSITIVE", 1, 0)
    anomf <- anom_df$binary;   anomf[is.na(anomf)] <- 0
    anom <- rbind.data.frame(anom, as.data.frame(anomf))
  }
  anom_final[[length(anom_final) + 1]] <-  anom
}
anom_final <- do.call(cbind, anom_final)
colnames(anom_final) <- c('N1ND', 'N1SD', 'N3ND', 'N3SD', 'EN1ND', 'EN1SD', 'EN1ED', 'EN1WD')
## anomaly file by OLS
anom.18 <- read.csv('anom.18.Freeway.D.csv', header = TRUE)[,-1]

anom_final <- cbind.data.frame('Date' = anom.18$Date, 'Time' = anom.18$Time, anom_final)

## compare the results of OLS by Unrec ARIMA

common_ones_zeros <- hadamard.prod(as.matrix(anom.18[,-c(1,2)]), as.matrix(anom_final[,-c(1,2)])) + 
  hadamard.prod((1-as.matrix(anom.18[,-c(1,2)])), (1-as.matrix(anom_final[,-c(1,2)])))

sum(common_ones_zeros ==1)/(nrow(common_ones_zeros)*ncol(common_ones_zeros))


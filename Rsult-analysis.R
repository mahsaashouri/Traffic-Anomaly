## actual values
holiday.1 <- read.csv('holiday.1.csv', header = TRUE)[-c(1:336),-1]
holiday.2 <- read.csv('holiday.2.csv', header = TRUE)[-c(1:336),-1]
holiday.3 <- read.csv('holiday.3.csv', header = TRUE)[-c(1:336),-1]
holiday.4 <- read.csv('holiday.4.csv', header = TRUE)[-c(1:336),-1]
holiday.5 <- read.csv('holiday.5.csv', header = TRUE)[-c(1:336),-1]
holiday.6 <- read.csv('holiday.6.csv', header = TRUE)[-c(1:336),-1]
holiday.7 <- read.csv('holiday.7.csv', header = TRUE)[-c(1:336),-1]
holiday.8 <- read.csv('holiday.8.csv', header = TRUE)[-c(1:336),-1]
holiday.9 <- read.csv('holiday.9.csv', header = TRUE)[-c(1:336),-1]
holiday.10 <- read.csv('holiday.10.csv', header = TRUE)[-c(1:336),-1]
holiday.11 <- read.csv('holiday.11.csv', header = TRUE)[-c(1:336),-1]
holiday.12 <- read.csv('holiday.12.csv', header = TRUE)[-c(1:336),-1]
holiday.13 <- read.csv('holiday.13.csv', header = TRUE)[-c(1:336),-1]
holiday.14 <- read.csv('holiday.14.csv', header = TRUE)[-c(1:336),-1]
holiday.15 <- read.csv('holiday.15.csv', header = TRUE)[-c(1:336),-1]
holiday.16 <- read.csv('holiday.16.csv', header = TRUE)[-c(1:336),-1]
holiday.17 <- read.csv('holiday.17.csv', header = TRUE)[-c(1:336),-1]
holiday.18 <- read.csv('holiday.18.csv', header = TRUE)[-c(1:336),-1]
## rec forecasts
fc.rec.1 <- read.csv('fc.OLS.rec-1.csv', header = TRUE)
fc.rec.2 <- read.csv('fc.OLS.rec-2.csv', header = TRUE)
fc.rec.3 <- read.csv('fc.OLS.rec-3.csv', header = TRUE)
fc.rec.4 <- read.csv('fc.OLS.rec-4.csv', header = TRUE)
fc.rec.5 <- read.csv('fc.OLS.rec-5.csv', header = TRUE)
fc.rec.6 <- read.csv('fc.OLS.rec-6.csv', header = TRUE)
fc.rec.7 <- read.csv('fc.OLS.rec-7.csv', header = TRUE)
fc.rec.8 <- read.csv('fc.OLS.rec-8.csv', header = TRUE)
fc.rec.9 <- read.csv('fc.OLS.rec-9.csv', header = TRUE)
fc.rec.10 <- read.csv('fc.OLS.rec-10.csv', header = TRUE)
fc.rec.11 <- read.csv('fc.OLS.rec-11.csv', header = TRUE)
fc.rec.12 <- read.csv('fc.OLS.rec-12.csv', header = TRUE)
fc.rec.13 <- read.csv('fc.OLS.rec-13.csv', header = TRUE)
fc.rec.14 <- read.csv('fc.OLS.rec-14.csv', header = TRUE)
fc.rec.15 <- read.csv('fc.OLS.rec-15.csv', header = TRUE)
fc.rec.16 <- read.csv('fc.OLS.rec-16.csv', header = TRUE)
fc.rec.17 <- read.csv('fc.OLS.rec-17.csv', header = TRUE)
fc.rec.18 <- read.csv('fc.OLS.rec-18.csv', header = TRUE)

## PI rec 95% - lower
quan25.1 <- read.csv('quan25-1.csv', header = TRUE)
colnames(quan25.1) <- colnames(fc.rec.1)
quan25.2 <- read.csv('quan25-2.csv', header = TRUE)
colnames(quan25.2) <- colnames(fc.rec.1)
quan25.3 <- read.csv('quan25-3.csv', header = TRUE)
colnames(quan25.3) <- colnames(fc.rec.1)
quan25.4 <- read.csv('quan25-4.csv', header = TRUE)
colnames(quan25.4) <- colnames(fc.rec.1)
quan25.5 <- read.csv('quan25-5.csv', header = TRUE)
colnames(quan25.5) <- colnames(fc.rec.1)
quan25.6 <- read.csv('quan25-6.csv', header = TRUE)
colnames(quan25.6) <- colnames(fc.rec.1)
quan25.7 <- read.csv('quan25-7.csv', header = TRUE)
colnames(quan25.7) <- colnames(fc.rec.1)
quan25.8 <- read.csv('quan25-8.csv', header = TRUE)
colnames(quan25.8) <- colnames(fc.rec.1)
quan25.9 <- read.csv('quan25-9.csv', header = TRUE)
colnames(quan25.9) <- colnames(fc.rec.1)
quan25.10 <- read.csv('quan25-10.csv', header = TRUE)
colnames(quan25.10) <- colnames(fc.rec.1)
quan25.11 <- read.csv('quan25-11.csv', header = TRUE)
colnames(quan25.11) <- colnames(fc.rec.1)
quan25.12 <- read.csv('quan25-12.csv', header = TRUE)
colnames(quan25.12) <- colnames(fc.rec.1)
quan25.13 <- read.csv('quan25-13.csv', header = TRUE)
colnames(quan25.13) <- colnames(fc.rec.1)
quan25.14 <- read.csv('quan25-14.csv', header = TRUE)
colnames(quan25.14) <- colnames(fc.rec.1)
quan25.15 <- read.csv('quan25-15.csv', header = TRUE)
colnames(quan25.15) <- colnames(fc.rec.1)
quan25.16 <- read.csv('quan25-16.csv', header = TRUE)
colnames(quan25.16) <- colnames(fc.rec.1)
quan25.17 <- read.csv('quan25-17.csv', header = TRUE)
colnames(quan25.17) <- colnames(fc.rec.1)
quan25.18 <- read.csv('quan25-18.csv', header = TRUE)
colnames(quan25.18) <- colnames(fc.rec.1)


## PI rec 95% - upper
quan975.1 <- read.csv('quan975-1.csv', header = TRUE)
colnames(quan975.1) <- colnames(fc.rec.1)
quan975.2 <- read.csv('quan975-2.csv', header = TRUE)
colnames(quan975.2) <- colnames(fc.rec.1)
quan975.3 <- read.csv('quan975-3.csv', header = TRUE)
colnames(quan975.3) <- colnames(fc.rec.1)
quan975.4 <- read.csv('quan975-4.csv', header = TRUE)
colnames(quan975.4) <- colnames(fc.rec.1)
quan975.5 <- read.csv('quan975-5.csv', header = TRUE)
colnames(quan975.5) <- colnames(fc.rec.1)
quan975.6 <- read.csv('quan975-6.csv', header = TRUE)
colnames(quan975.6) <- colnames(fc.rec.1)
quan975.7 <- read.csv('quan975-7.csv', header = TRUE)
colnames(quan975.7) <- colnames(fc.rec.1)
quan975.8 <- read.csv('quan975-8.csv', header = TRUE)
colnames(quan975.8) <- colnames(fc.rec.1)
quan975.9 <- read.csv('quan975-9.csv', header = TRUE)
colnames(quan975.9) <- colnames(fc.rec.1)
quan975.10 <- read.csv('quan975-10.csv', header = TRUE)
colnames(quan975.10) <- colnames(fc.rec.1)
quan975.11 <- read.csv('quan975-11.csv', header = TRUE)
colnames(quan975.11) <- colnames(fc.rec.1)
quan975.12 <- read.csv('quan975-12.csv', header = TRUE)
colnames(quan975.12) <- colnames(fc.rec.1)
quan975.13 <- read.csv('quan975-13.csv', header = TRUE)
colnames(quan975.13) <- colnames(fc.rec.1)
quan975.14 <- read.csv('quan975-14.csv', header = TRUE)
colnames(quan975.14) <- colnames(fc.rec.1)
quan975.15 <- read.csv('quan975-15.csv', header = TRUE)
colnames(quan975.15) <- colnames(fc.rec.1)
quan975.16 <- read.csv('quan975-16.csv', header = TRUE)
colnames(quan975.16) <- colnames(fc.rec.1)
quan975.17 <- read.csv('quan975-17.csv', header = TRUE)
colnames(quan975.17) <- colnames(fc.rec.1)
quan975.18 <- read.csv('quan975-18.csv', header = TRUE)
colnames(quan975.18) <- colnames(fc.rec.1)


## PI rec 90% - lower
quan05.1 <- read.csv('quan05-1.csv', header = TRUE)
colnames(quan05.1) <- colnames(fc.rec.1)
quan05.2 <- read.csv('quan05-2.csv', header = TRUE)
colnames(quan05.2) <- colnames(fc.rec.1)
quan05.3 <- read.csv('quan05-3.csv', header = TRUE)
colnames(quan05.3) <- colnames(fc.rec.1)
quan05.4 <- read.csv('quan05-4.csv', header = TRUE)
colnames(quan05.4) <- colnames(fc.rec.1)
quan05.5 <- read.csv('quan05-5.csv', header = TRUE)
colnames(quan05.5) <- colnames(fc.rec.1)
quan05.6 <- read.csv('quan05-6.csv', header = TRUE)
colnames(quan05.6) <- colnames(fc.rec.1)
quan05.7 <- read.csv('quan05-7.csv', header = TRUE)
colnames(quan05.7) <- colnames(fc.rec.1)
quan05.8 <- read.csv('quan05-8.csv', header = TRUE)
colnames(quan05.8) <- colnames(fc.rec.1)
quan05.9 <- read.csv('quan05-9.csv', header = TRUE)
colnames(quan05.9) <- colnames(fc.rec.1)
quan05.10 <- read.csv('quan05-10.csv', header = TRUE)
colnames(quan05.10) <- colnames(fc.rec.1)
quan05.11 <- read.csv('quan05-11.csv', header = TRUE)
colnames(quan05.11) <- colnames(fc.rec.1)
quan05.12 <- read.csv('quan05-12.csv', header = TRUE)
colnames(quan05.12) <- colnames(fc.rec.1)
quan05.13 <- read.csv('quan05-13.csv', header = TRUE)
colnames(quan05.13) <- colnames(fc.rec.1)
quan05.14 <- read.csv('quan05-14.csv', header = TRUE)
colnames(quan05.14) <- colnames(fc.rec.1)
quan05.15 <- read.csv('quan05-15.csv', header = TRUE)
colnames(quan05.15) <- colnames(fc.rec.1)
quan05.16 <- read.csv('quan05-16.csv', header = TRUE)
colnames(quan05.16) <- colnames(fc.rec.1)
quan05.17 <- read.csv('quan05-17.csv', header = TRUE)
colnames(quan05.17) <- colnames(fc.rec.1)
quan05.18 <- read.csv('quan05-18.csv', header = TRUE)
colnames(quan05.18) <- colnames(fc.rec.1)

## PI rec 90% - upper
quan95.1 <- read.csv('quan95-1.csv', header = TRUE)
colnames(quan95.1) <- colnames(fc.rec.1)
quan95.2 <- read.csv('quan95-2.csv', header = TRUE)
colnames(quan95.2) <- colnames(fc.rec.1)
quan95.3 <- read.csv('quan95-3.csv', header = TRUE)
colnames(quan95.3) <- colnames(fc.rec.1)
quan95.4 <- read.csv('quan95-4.csv', header = TRUE)
colnames(quan95.4) <- colnames(fc.rec.1)
quan95.5 <- read.csv('quan95-5.csv', header = TRUE)
colnames(quan95.5) <- colnames(fc.rec.1)
quan95.6 <- read.csv('quan95-6.csv', header = TRUE)
colnames(quan95.6) <- colnames(fc.rec.1)
quan95.7 <- read.csv('quan95-7.csv', header = TRUE)
colnames(quan95.7) <- colnames(fc.rec.1)
quan95.8 <- read.csv('quan95-8.csv', header = TRUE)
colnames(quan95.8) <- colnames(fc.rec.1)
quan95.9 <- read.csv('quan95-9.csv', header = TRUE)
colnames(quan95.9) <- colnames(fc.rec.1)
quan95.10 <- read.csv('quan95-10.csv', header = TRUE)
colnames(quan95.10) <- colnames(fc.rec.1)
quan95.11 <- read.csv('quan95-11.csv', header = TRUE)
colnames(quan95.11) <- colnames(fc.rec.1)
quan95.12 <- read.csv('quan95-12.csv', header = TRUE)
colnames(quan95.12) <- colnames(fc.rec.1)
quan95.13 <- read.csv('quan95-13.csv', header = TRUE)
colnames(quan95.13) <- colnames(fc.rec.1)
quan95.14 <- read.csv('quan95-14.csv', header = TRUE)
colnames(quan95.14) <- colnames(fc.rec.1)
quan95.15 <- read.csv('quan95-15.csv', header = TRUE)
colnames(quan95.15) <- colnames(fc.rec.1)
quan95.16 <- read.csv('quan95-16.csv', header = TRUE)
colnames(quan95.16) <- colnames(fc.rec.1)
quan95.17 <- read.csv('quan95-17.csv', header = TRUE)
colnames(quan95.17) <- colnames(fc.rec.1)
quan95.18 <- read.csv('quan95-18.csv', header = TRUE)
colnames(quan95.18) <- colnames(fc.rec.1)



## define dates
date.1 <- seq(as.POSIXct("2019-02-02 00:00:00", tz="CET"), as.POSIXct("2019-02-10 23:00:00", tz="CET"), by="hour")
date.2 <- seq(as.POSIXct("2019-02-28 00:00:00", tz="CET"), as.POSIXct("2019-03-03 23:00:00", tz="CET"), by="hour")
date.3 <- seq(as.POSIXct("2019-04-04 00:00:00", tz="CET"), as.POSIXct("2019-04-07 23:00:00", tz="CET"), by="hour")
date.4 <- seq(as.POSIXct("2019-06-07 00:00:00", tz="CET"), as.POSIXct("2019-06-09 23:00:00", tz="CET"), by="hour")
date.5 <- seq(as.POSIXct("2019-09-13 00:00:00", tz="CET"), as.POSIXct("2019-09-15 23:00:00", tz="CET"), by="hour")
date.6 <- seq(as.POSIXct("2019-10-10 00:00:00", tz="CET"), as.POSIXct("2019-10-13 23:00:00", tz="CET"), by="hour")
date.7 <- seq(as.POSIXct("2020-01-23 00:00:00", tz="CET"), as.POSIXct("2020-01-29 23:00:00", tz="CET"), by="hour")
date.8 <- seq(as.POSIXct("2020-02-28 00:00:00", tz="CET"), as.POSIXct("2020-03-01 23:00:00", tz="CET"), by="hour")
date.9 <- seq(as.POSIXct("2020-04-02 00:00:00", tz="CET"), as.POSIXct("2020-04-05 23:00:00", tz="CET"), by="hour")
date.10 <- seq(as.POSIXct("2020-05-01 00:00:00", tz="CET"), as.POSIXct("2020-05-03 23:00:00", tz="CET"), by="hour")
date.11 <- seq(as.POSIXct("2020-06-25 00:00:00", tz="CET"), as.POSIXct("2020-06-28 23:00:00", tz="CET"), by="hour")
date.12 <- seq(as.POSIXct("2020-10-01 00:00:00", tz="CET"), as.POSIXct("2020-10-04 23:00:00", tz="CET"), by="hour")
date.13 <- seq(as.POSIXct("2020-10-09 00:00:00", tz="CET"), as.POSIXct("2020-10-11 23:00:00", tz="CET"), by="hour")
date.14 <- seq(as.POSIXct("2021-01-01 00:00:00", tz="CET"), as.POSIXct("2021-01-03 23:00:00", tz="CET"), by="hour")
date.15 <- seq(as.POSIXct("2021-02-10 00:00:00", tz="CET"), as.POSIXct("2021-02-16 23:00:00", tz="CET"), by="hour")
date.16 <- seq(as.POSIXct("2021-02-27 00:00:00", tz="CET"), as.POSIXct("2021-03-01 23:00:00", tz="CET"), by="hour")
date.17 <- seq(as.POSIXct("2021-04-02 00:00:00", tz="CET"), as.POSIXct("2021-04-05 23:00:00", tz="CET"), by="hour")
date.18 <- seq(as.POSIXct("2021-04-30 00:00:00", tz="CET"), as.POSIXct("2021-04-30 23:00:00", tz="CET"), by="hour")


#N2971S31

test.data <- cbind.data.frame('date' = date.18 , 'actual' = holiday.18[,'G6.CN'] , 'OLS' = fc.rec.18[,'G6.CN'], 
                              'upper.95' = quan975.18[,'G6.CN'], 'lower.95' = quan25.18[,'G6.CN'],
                              'upper.90' = quan95.18[,'G6.CN'], 'lower.90' = quan05.18[,'G6.CN'])

ggplot(data = test.data) + geom_line(aes(x = date,y = actual, color='actual', size = 'actual')) + 
  geom_line(aes(x = date, y = OLS, color='OLS', size = 'OLS')) +
  geom_ribbon(aes(x = date, ymax = upper.95, ymin = lower.95), fill='pink', alpha = 0.3, size = 0.5, key_glyph = "rect") +
  geom_line(aes(x = date,y = upper.95, color='upper.95', size = 'upper.95')) +
  geom_line(aes(x = date,y = lower.95, color='lower.95', size = 'lower.95')) +
  geom_ribbon(aes(x = date, ymax = upper.90, ymin = lower.90), fill='lightblue', alpha = 0.2, size = 0.5, key_glyph = "rect") +
  geom_line(aes(x = date,y = upper.90, color='upper.90', size = 'upper.90')) +
  geom_line(aes(x = date,y = lower.90, color='lower.90', size = 'lower.90')) +
  ylab('Count')+xlab('Date')  +
  scale_x_datetime( breaks = scales::date_breaks("12 hour"),
                    labels = scales::date_format("%a-%d\n%H:%M",  tz="CET")) +
  scale_colour_manual("Method",
                      breaks = c("actual", "OLS",  "upper.95", "lower.95",  "upper.90", "lower.90"),
                      values = c("black", "red", "pink",  "pink", "lightblue", "lightblue"))+
  scale_size_manual(breaks = c("actual", "OLS",  "upper.95", "lower.95",  "upper.90", "lower.90"),
                    values = c(0.8, 0.8, 0.1, 0.1, 0.1, 0.1), guide = "none") +
  theme_light() +
  theme(
    axis.title.x = element_text(size = 20),
    axis.text.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_text(size = 20),
    legend.title=element_text(size=20), 
    legend.text=element_text(size=20))


### compare values to detect anomalies: Region by Direction

## Holiday 1

anom.N.1.ND = ifelse(quan975.1$G6.NN > 0, ifelse(quan975.1$G6.NN > holiday.1$G6.NN,0,1), 0)
anom.N.1.SD = ifelse(quan975.1$G6.NS > 0, ifelse(quan975.1$G6.NS > holiday.1$G6.NS,0,1), 0)
anom.N.1.ED = ifelse(quan975.1$G6.NE > 0, ifelse(quan975.1$G6.NE > holiday.1$G6.NE,0,1), 0)
anom.N.1.WD = ifelse(quan975.1$G6.NW > 0, ifelse(quan975.1$G6.NW > holiday.1$G6.NW,0,1), 0)
anom.C.1.ND = ifelse(quan975.1$G6.CN > 0, ifelse(quan975.1$G6.CN > holiday.1$G6.CN,0,1), 0)
anom.C.1.SD = ifelse(quan975.1$G6.CS > 0, ifelse(quan975.1$G6.CS > holiday.1$G6.CS,0,1), 0)
anom.S.1.ND = ifelse(quan975.1$G6.SN > 0, ifelse(quan975.1$G6.SN > holiday.1$G6.SN,0,1), 0)
anom.S.1.SD = ifelse(quan975.1$G6.SS > 0, ifelse(quan975.1$G6.SS > holiday.1$G6.SS,0,1), 0)


anom.1 <- cbind.data.frame('date' = date.1, 'NRND' = anom.N.1.ND, 'NRSD' = anom.N.1.SD, 'NRED' = anom.N.1.ED, 'NRWD' = anom.N.1.WD,'CRND' = anom.C.1.ND, 
                           'CRSD' = anom.C.1.SD, 'SRND' = anom.S.1.ND, 'SRSD' = anom.S.1.SD)
library(tidyverse)
anom.1 <- separate(data = anom.1, col = date, into  = c('Date', 'Time'), sep = ' ')


## Holiday 2
anom.N.2.ND = ifelse(quan975.2$G6.NN > 0, ifelse(quan975.2$G6.NN > holiday.2$G6.NN,0,1), 0)
anom.N.2.SD = ifelse(quan975.2$G6.NS > 0, ifelse(quan975.2$G6.NS > holiday.2$G6.NS,0,1), 0)
anom.N.2.ED = ifelse(quan975.2$G6.NE > 0, ifelse(quan975.2$G6.NE > holiday.2$G6.NE,0,1), 0)
anom.N.2.WD = ifelse(quan975.2$G6.NW > 0, ifelse(quan975.2$G6.NW > holiday.2$G6.NW,0,1), 0)
anom.C.2.ND = ifelse(quan975.2$G6.CN > 0, ifelse(quan975.2$G6.CN > holiday.2$G6.CN,0,1), 0)
anom.C.2.SD = ifelse(quan975.2$G6.CS > 0, ifelse(quan975.2$G6.CS > holiday.2$G6.CS,0,1), 0)
anom.S.2.ND = ifelse(quan975.2$G6.SN > 0, ifelse(quan975.2$G6.SN > holiday.2$G6.SN,0,1), 0)
anom.S.2.SD = ifelse(quan975.2$G6.SS > 0, ifelse(quan975.2$G6.SS > holiday.2$G6.SS,0,1), 0)


anom.2 <- cbind.data.frame('date' = date.2, 'NRND' = anom.N.2.ND, 'NRSD' = anom.N.2.SD, 'NRED' = anom.N.2.ED, 'NRWD' = anom.N.2.WD,'CRND' = anom.C.2.ND, 
                           'CRSD' = anom.C.2.SD, 'SRND' = anom.S.2.ND, 'SRSD' = anom.S.2.SD)
anom.2 <- separate(data = anom.2, col = date, into  = c('Date', 'Time'), sep = ' ')

## Holiday 3
anom.N.3.ND = ifelse(quan975.3$G6.NN > 0, ifelse(quan975.3$G6.NN > holiday.3$G6.NN,0,1), 0)
anom.N.3.SD = ifelse(quan975.3$G6.NS > 0, ifelse(quan975.3$G6.NS > holiday.3$G6.NS,0,1), 0)
anom.N.3.ED = ifelse(quan975.3$G6.NE > 0, ifelse(quan975.3$G6.NE > holiday.3$G6.NE,0,1), 0)
anom.N.3.WD = ifelse(quan975.3$G6.NW > 0, ifelse(quan975.3$G6.NW > holiday.3$G6.NW,0,1), 0)
anom.C.3.ND = ifelse(quan975.3$G6.CN > 0, ifelse(quan975.3$G6.CN > holiday.3$G6.CN,0,1), 0)
anom.C.3.SD = ifelse(quan975.3$G6.CS > 0, ifelse(quan975.3$G6.CS > holiday.3$G6.CS,0,1), 0)
anom.S.3.ND = ifelse(quan975.3$G6.SN > 0, ifelse(quan975.3$G6.SN > holiday.3$G6.SN,0,1), 0)
anom.S.3.SD = ifelse(quan975.3$G6.SS > 0, ifelse(quan975.3$G6.SS > holiday.3$G6.SS,0,1), 0)

anom.3 <- cbind.data.frame('date' = date.3, 'NRND' = anom.N.3.ND, 'NRSD' = anom.N.3.SD, 'NRED' = anom.N.3.ED, 'NRWD' = anom.N.3.WD,'CRND' = anom.C.3.ND, 
                           'CRSD' = anom.C.3.SD, 'SRND' = anom.S.3.ND, 'SRSD' = anom.S.3.SD)
anom.3 <- separate(data = anom.3, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 4
anom.N.4.ND = ifelse(quan975.4$G6.NN > 0, ifelse(quan975.4$G6.NN > holiday.4$G6.NN,0,1), 0)
anom.N.4.SD = ifelse(quan975.4$G6.NS > 0, ifelse(quan975.4$G6.NS > holiday.4$G6.NS,0,1), 0)
anom.N.4.ED = ifelse(quan975.4$G6.NE > 0, ifelse(quan975.4$G6.NE > holiday.4$G6.NE,0,1), 0)
anom.N.4.WD = ifelse(quan975.4$G6.NW > 0, ifelse(quan975.4$G6.NW > holiday.4$G6.NW,0,1), 0)
anom.C.4.ND = ifelse(quan975.4$G6.CN > 0, ifelse(quan975.4$G6.CN > holiday.4$G6.CN,0,1), 0)
anom.C.4.SD = ifelse(quan975.4$G6.CS > 0, ifelse(quan975.4$G6.CS > holiday.4$G6.CS,0,1), 0)
anom.S.4.ND = ifelse(quan975.4$G6.SN > 0, ifelse(quan975.4$G6.SN > holiday.4$G6.SN,0,1), 0)
anom.S.4.SD = ifelse(quan975.4$G6.SS > 0, ifelse(quan975.4$G6.SS > holiday.4$G6.SS,0,1), 0)

anom.4 <- cbind.data.frame('date' = date.4, 'NRND' = anom.N.4.ND, 'NRSD' = anom.N.4.SD, 'NRED' = anom.N.4.ED, 'NRWD' = anom.N.4.WD,'CRND' = anom.C.4.ND, 
                           'CRSD' = anom.C.4.SD, 'SRND' = anom.S.4.ND, 'SRSD' = anom.S.4.SD)
anom.4 <- separate(data = anom.4, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 5
anom.N.5.ND = ifelse(quan975.5$G6.NN > 0, ifelse(quan975.5$G6.NN > holiday.5$G6.NN,0,1), 0)
anom.N.5.SD = ifelse(quan975.5$G6.NS > 0, ifelse(quan975.5$G6.NS > holiday.5$G6.NS,0,1), 0)
anom.N.5.ED = ifelse(quan975.5$G6.NE > 0, ifelse(quan975.5$G6.NE > holiday.5$G6.NE,0,1), 0)
anom.N.5.WD = ifelse(quan975.5$G6.NW > 0, ifelse(quan975.5$G6.NW > holiday.5$G6.NW,0,1), 0)
anom.C.5.ND = ifelse(quan975.5$G6.CN > 0, ifelse(quan975.5$G6.CN > holiday.5$G6.CN,0,1), 0)
anom.C.5.SD = ifelse(quan975.5$G6.CS > 0, ifelse(quan975.5$G6.CS > holiday.5$G6.CS,0,1), 0)
anom.S.5.ND = ifelse(quan975.5$G6.SN > 0, ifelse(quan975.5$G6.SN > holiday.5$G6.SN,0,1), 0)
anom.S.5.SD = ifelse(quan975.5$G6.SS > 0, ifelse(quan975.5$G6.SS > holiday.5$G6.SS,0,1), 0)

anom.5 <- cbind.data.frame('date' = date.5, 'NRND' = anom.N.5.ND, 'NRSD' = anom.N.5.SD, 'NRED' = anom.N.5.ED, 'NRWD' = anom.N.5.WD,'CRND' = anom.C.5.ND, 
                           'CRSD' = anom.C.5.SD, 'SRND' = anom.S.5.ND, 'SRSD' = anom.S.5.SD)
anom.5 <- separate(data = anom.5, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 6
anom.N.6.ND = ifelse(quan975.6$G6.NN > 0, ifelse(quan975.6$G6.NN > holiday.6$G6.NN,0,1), 0)
anom.N.6.SD = ifelse(quan975.6$G6.NS > 0, ifelse(quan975.6$G6.NS > holiday.6$G6.NS,0,1), 0)
anom.N.6.ED = ifelse(quan975.6$G6.NE > 0, ifelse(quan975.6$G6.NE > holiday.6$G6.NE,0,1), 0)
anom.N.6.WD = ifelse(quan975.6$G6.NW > 0, ifelse(quan975.6$G6.NW > holiday.6$G6.NW,0,1), 0)
anom.C.6.ND = ifelse(quan975.6$G6.CN > 0, ifelse(quan975.6$G6.CN > holiday.6$G6.CN,0,1), 0)
anom.C.6.SD = ifelse(quan975.6$G6.CS > 0, ifelse(quan975.6$G6.CS > holiday.6$G6.CS,0,1), 0)
anom.S.6.ND = ifelse(quan975.6$G6.SN > 0, ifelse(quan975.6$G6.SN > holiday.6$G6.SN,0,1), 0)
anom.S.6.SD = ifelse(quan975.6$G6.SS > 0, ifelse(quan975.6$G6.SS > holiday.6$G6.SS,0,1), 0)

anom.6 <- cbind.data.frame('date' = date.6, 'NRND' = anom.N.6.ND, 'NRSD' = anom.N.6.SD, 'NRED' = anom.N.6.ED, 'NRWD' = anom.N.6.WD,'CRND' = anom.C.6.ND, 
                           'CRSD' = anom.C.6.SD, 'SRND' = anom.S.6.ND, 'SRSD' = anom.S.6.SD)
anom.6 <- separate(data = anom.6, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 7
anom.N.7.ND = ifelse(quan975.7$G6.NN > 0, ifelse(quan975.7$G6.NN > holiday.7$G6.NN,0,1), 0)
anom.N.7.SD = ifelse(quan975.7$G6.NS > 0, ifelse(quan975.7$G6.NS > holiday.7$G6.NS,0,1), 0)
anom.N.7.ED = ifelse(quan975.7$G6.NE > 0, ifelse(quan975.7$G6.NE > holiday.7$G6.NE,0,1), 0)
anom.N.7.WD = ifelse(quan975.7$G6.NW > 0, ifelse(quan975.7$G6.NW > holiday.7$G6.NW,0,1), 0)
anom.C.7.ND = ifelse(quan975.7$G6.CN > 0, ifelse(quan975.7$G6.CN > holiday.7$G6.CN,0,1), 0)
anom.C.7.SD = ifelse(quan975.7$G6.CS > 0, ifelse(quan975.7$G6.CS > holiday.7$G6.CS,0,1), 0)
anom.S.7.ND = ifelse(quan975.7$G6.SN > 0, ifelse(quan975.7$G6.SN > holiday.7$G6.SN,0,1), 0)
anom.S.7.SD = ifelse(quan975.7$G6.SS > 0, ifelse(quan975.7$G6.SS > holiday.7$G6.SS,0,1), 0)

anom.7 <- cbind.data.frame('date' = date.7, 'NRND' = anom.N.7.ND, 'NRSD' = anom.N.7.SD, 'NRED' = anom.N.7.ED, 'NRWD' = anom.N.7.WD,'CRND' = anom.C.7.ND, 
                           'CRSD' = anom.C.7.SD, 'SRND' = anom.S.7.ND, 'SRSD' = anom.S.7.SD)
anom.7 <- separate(data = anom.7, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 8
anom.N.8.ND = ifelse(quan975.8$G6.NN > 0, ifelse(quan975.8$G6.NN > holiday.8$G6.NN,0,1), 0)
anom.N.8.SD = ifelse(quan975.8$G6.NS > 0, ifelse(quan975.8$G6.NS > holiday.8$G6.NS,0,1), 0)
anom.N.8.ED = ifelse(quan975.8$G6.NE > 0, ifelse(quan975.8$G6.NE > holiday.8$G6.NE,0,1), 0)
anom.N.8.WD = ifelse(quan975.8$G6.NW > 0, ifelse(quan975.8$G6.NW > holiday.8$G6.NW,0,1), 0)
anom.C.8.ND = ifelse(quan975.8$G6.CN > 0, ifelse(quan975.8$G6.CN > holiday.8$G6.CN,0,1), 0)
anom.C.8.SD = ifelse(quan975.8$G6.CS > 0, ifelse(quan975.8$G6.CS > holiday.8$G6.CS,0,1), 0)
anom.S.8.ND = ifelse(quan975.8$G6.SN > 0, ifelse(quan975.8$G6.SN > holiday.8$G6.SN,0,1), 0)
anom.S.8.SD = ifelse(quan975.8$G6.SS > 0, ifelse(quan975.8$G6.SS > holiday.8$G6.SS,0,1), 0)

anom.8 <- cbind.data.frame('date' = date.8, 'NRND' = anom.N.8.ND, 'NRSD' = anom.N.8.SD, 'NRED' = anom.N.8.ED, 'NRWD' = anom.N.8.WD,'CRND' = anom.C.8.ND, 
                           'CRSD' = anom.C.8.SD, 'SRND' = anom.S.8.ND, 'SRSD' = anom.S.8.SD)
anom.8 <- separate(data = anom.8, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 9
anom.N.9.ND = ifelse(quan975.9$G6.NN > 0, ifelse(quan975.9$G6.NN > holiday.9$G6.NN,0,1), 0)
anom.N.9.SD = ifelse(quan975.9$G6.NS > 0, ifelse(quan975.9$G6.NS > holiday.9$G6.NS,0,1), 0)
anom.N.9.ED = ifelse(quan975.9$G6.NE > 0, ifelse(quan975.9$G6.NE > holiday.9$G6.NE,0,1), 0)
anom.N.9.WD = ifelse(quan975.9$G6.NW > 0, ifelse(quan975.9$G6.NW > holiday.9$G6.NW,0,1), 0)
anom.C.9.ND = ifelse(quan975.9$G6.CN > 0, ifelse(quan975.9$G6.CN > holiday.9$G6.CN,0,1), 0)
anom.C.9.SD = ifelse(quan975.9$G6.CS > 0, ifelse(quan975.9$G6.CS > holiday.9$G6.CS,0,1), 0)
anom.S.9.ND = ifelse(quan975.9$G6.SN > 0, ifelse(quan975.9$G6.SN > holiday.9$G6.SN,0,1), 0)
anom.S.9.SD = ifelse(quan975.9$G6.SS > 0, ifelse(quan975.9$G6.SS > holiday.9$G6.SS,0,1), 0)

anom.9 <- cbind.data.frame('date' = date.9, 'NRND' = anom.N.9.ND, 'NRSD' = anom.N.9.SD, 'NRED' = anom.N.9.ED, 'NRWD' = anom.N.9.WD,'CRND' = anom.C.9.ND, 
                           'CRSD' = anom.C.9.SD, 'SRND' = anom.S.9.ND, 'SRSD' = anom.S.9.SD)
anom.9 <- separate(data = anom.9, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 10
anom.N.10.ND = ifelse(quan975.10$G6.NN > 0, ifelse(quan975.10$G6.NN > holiday.10$G6.NN,0,1), 0)
anom.N.10.SD = ifelse(quan975.10$G6.NS > 0, ifelse(quan975.10$G6.NS > holiday.10$G6.NS,0,1), 0)
anom.N.10.ED = ifelse(quan975.10$G6.NE > 0, ifelse(quan975.10$G6.NE > holiday.10$G6.NE,0,1), 0)
anom.N.10.WD = ifelse(quan975.10$G6.NW > 0, ifelse(quan975.10$G6.NW > holiday.10$G6.NW,0,1), 0)
anom.C.10.ND = ifelse(quan975.10$G6.CN > 0, ifelse(quan975.10$G6.CN > holiday.10$G6.CN,0,1), 0)
anom.C.10.SD = ifelse(quan975.10$G6.CS > 0, ifelse(quan975.10$G6.CS > holiday.10$G6.CS,0,1), 0)
anom.S.10.ND = ifelse(quan975.10$G6.SN > 0, ifelse(quan975.10$G6.SN > holiday.10$G6.SN,0,1), 0)
anom.S.10.SD = ifelse(quan975.10$G6.SS > 0, ifelse(quan975.10$G6.SS > holiday.10$G6.SS,0,1), 0)

anom.10 <- cbind.data.frame('date' = date.10, 'NRND' = anom.N.10.ND, 'NRSD' = anom.N.10.SD, 'NRED' = anom.N.10.ED, 'NRWD' = anom.N.10.WD,'CRND' = anom.C.10.ND, 
                            'CRSD' = anom.C.10.SD, 'SRND' = anom.S.10.ND, 'SRSD' = anom.S.10.SD)
anom.10 <- separate(data = anom.10, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 11
anom.N.11.ND = ifelse(quan975.11$G6.NN > 0, ifelse(quan975.11$G6.NN > holiday.11$G6.NN,0,1), 0)
anom.N.11.SD = ifelse(quan975.11$G6.NS > 0, ifelse(quan975.11$G6.NS > holiday.11$G6.NS,0,1), 0)
anom.N.11.ED = ifelse(quan975.11$G6.NE > 0, ifelse(quan975.11$G6.NE > holiday.11$G6.NE,0,1), 0)
anom.N.11.WD = ifelse(quan975.11$G6.NW > 0, ifelse(quan975.11$G6.NW > holiday.11$G6.NW,0,1), 0)
anom.C.11.ND = ifelse(quan975.11$G6.CN > 0, ifelse(quan975.11$G6.CN > holiday.11$G6.CN,0,1), 0)
anom.C.11.SD = ifelse(quan975.11$G6.CS > 0, ifelse(quan975.11$G6.CS > holiday.11$G6.CS,0,1), 0)
anom.S.11.ND = ifelse(quan975.11$G6.SN > 0, ifelse(quan975.11$G6.SN > holiday.11$G6.SN,0,1), 0)
anom.S.11.SD = ifelse(quan975.11$G6.SS > 0, ifelse(quan975.11$G6.SS > holiday.11$G6.SS,0,1), 0)

anom.11 <- cbind.data.frame('date' = date.11, 'NRND' = anom.N.11.ND, 'NRSD' = anom.N.11.SD, 'NRED' = anom.N.11.ED, 'NRWD' = anom.N.11.WD,'CRND' = anom.C.11.ND, 
                            'CRSD' = anom.C.11.SD, 'SRND' = anom.S.11.ND, 'SRSD' = anom.S.11.SD)
anom.11 <- separate(data = anom.11, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 12
anom.N.12.ND = ifelse(quan975.12$G6.NN > 0, ifelse(quan975.12$G6.NN > holiday.12$G6.NN,0,1), 0)
anom.N.12.SD = ifelse(quan975.12$G6.NS > 0, ifelse(quan975.12$G6.NS > holiday.12$G6.NS,0,1), 0)
anom.N.12.ED = ifelse(quan975.12$G6.NE > 0, ifelse(quan975.12$G6.NE > holiday.12$G6.NE,0,1), 0)
anom.N.12.WD = ifelse(quan975.12$G6.NW > 0, ifelse(quan975.12$G6.NW > holiday.12$G6.NW,0,1), 0)
anom.C.12.ND = ifelse(quan975.12$G6.CN > 0, ifelse(quan975.12$G6.CN > holiday.12$G6.CN,0,1), 0)
anom.C.12.SD = ifelse(quan975.12$G6.CS > 0, ifelse(quan975.12$G6.CS > holiday.12$G6.CS,0,1), 0)
anom.S.12.ND = ifelse(quan975.12$G6.SN > 0, ifelse(quan975.12$G6.SN > holiday.12$G6.SN,0,1), 0)
anom.S.12.SD = ifelse(quan975.12$G6.SS > 0, ifelse(quan975.12$G6.SS > holiday.12$G6.SS,0,1), 0)

anom.12 <- cbind.data.frame('date' = date.12, 'NRND' = anom.N.12.ND, 'NRSD' = anom.N.12.SD, 'NRED' = anom.N.12.ED, 'NRWD' = anom.N.12.WD,'CRND' = anom.C.12.ND, 
                            'CRSD' = anom.C.12.SD, 'SRND' = anom.S.12.ND, 'SRSD' = anom.S.12.SD)
anom.12 <- separate(data = anom.12, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 13
anom.N.13.ND = ifelse(quan975.13$G6.NN > 0, ifelse(quan975.13$G6.NN > holiday.13$G6.NN,0,1), 0)
anom.N.13.SD = ifelse(quan975.13$G6.NS > 0, ifelse(quan975.13$G6.NS > holiday.13$G6.NS,0,1), 0)
anom.N.13.ED = ifelse(quan975.13$G6.NE > 0, ifelse(quan975.13$G6.NE > holiday.13$G6.NE,0,1), 0)
anom.N.13.WD = ifelse(quan975.13$G6.NW > 0, ifelse(quan975.13$G6.NW > holiday.13$G6.NW,0,1), 0)
anom.C.13.ND = ifelse(quan975.13$G6.CN > 0, ifelse(quan975.13$G6.CN > holiday.13$G6.CN,0,1), 0)
anom.C.13.SD = ifelse(quan975.13$G6.CS > 0, ifelse(quan975.13$G6.CS > holiday.13$G6.CS,0,1), 0)
anom.S.13.ND = ifelse(quan975.13$G6.SN > 0, ifelse(quan975.13$G6.SN > holiday.13$G6.SN,0,1), 0)
anom.S.13.SD = ifelse(quan975.13$G6.SS > 0, ifelse(quan975.13$G6.SS > holiday.13$G6.SS,0,1), 0)

anom.13 <- cbind.data.frame('date' = date.13, 'NRND' = anom.N.13.ND, 'NRSD' = anom.N.13.SD, 'NRED' = anom.N.13.ED, 'NRWD' = anom.N.13.WD,'CRND' = anom.C.13.ND, 
                            'CRSD' = anom.C.13.SD, 'SRND' = anom.S.13.ND, 'SRSD' = anom.S.13.SD)
anom.13 <- separate(data = anom.13, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 14
anom.N.14.ND = ifelse(quan975.14$G6.NN > 0, ifelse(quan975.14$G6.NN > holiday.14$G6.NN,0,1), 0)
anom.N.14.SD = ifelse(quan975.14$G6.NS > 0, ifelse(quan975.14$G6.NS > holiday.14$G6.NS,0,1), 0)
anom.N.14.ED = ifelse(quan975.14$G6.NE > 0, ifelse(quan975.14$G6.NE > holiday.14$G6.NE,0,1), 0)
anom.N.14.WD = ifelse(quan975.14$G6.NW > 0, ifelse(quan975.14$G6.NW > holiday.14$G6.NW,0,1), 0)
anom.C.14.ND = ifelse(quan975.14$G6.CN > 0, ifelse(quan975.14$G6.CN > holiday.14$G6.CN,0,1), 0)
anom.C.14.SD = ifelse(quan975.14$G6.CS > 0, ifelse(quan975.14$G6.CS > holiday.14$G6.CS,0,1), 0)
anom.S.14.ND = ifelse(quan975.14$G6.SN > 0, ifelse(quan975.14$G6.SN > holiday.14$G6.SN,0,1), 0)
anom.S.14.SD = ifelse(quan975.14$G6.SS > 0, ifelse(quan975.14$G6.SS > holiday.14$G6.SS,0,1), 0)

anom.14 <- cbind.data.frame('date' = date.14, 'NRND' = anom.N.14.ND, 'NRSD' = anom.N.14.SD, 'NRED' = anom.N.14.ED, 'NRWD' = anom.N.14.WD,'CRND' = anom.C.14.ND, 
                            'CRSD' = anom.C.14.SD, 'SRND' = anom.S.14.ND, 'SRSD' = anom.S.14.SD)
anom.14 <- separate(data = anom.14, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 15
anom.N.15.ND = ifelse(quan975.15$G6.NN > 0, ifelse(quan975.15$G6.NN > holiday.15$G6.NN,0,1), 0)
anom.N.15.SD = ifelse(quan975.15$G6.NS > 0, ifelse(quan975.15$G6.NS > holiday.15$G6.NS,0,1), 0)
anom.N.15.ED = ifelse(quan975.15$G6.NE > 0, ifelse(quan975.15$G6.NE > holiday.15$G6.NE,0,1), 0)
anom.N.15.WD = ifelse(quan975.15$G6.NW > 0, ifelse(quan975.15$G6.NW > holiday.15$G6.NW,0,1), 0)
anom.C.15.ND = ifelse(quan975.15$G6.CN > 0, ifelse(quan975.15$G6.CN > holiday.15$G6.CN,0,1), 0)
anom.C.15.SD = ifelse(quan975.15$G6.CS > 0, ifelse(quan975.15$G6.CS > holiday.15$G6.CS,0,1), 0)
anom.S.15.ND = ifelse(quan975.15$G6.SN > 0, ifelse(quan975.15$G6.SN > holiday.15$G6.SN,0,1), 0)
anom.S.15.SD = ifelse(quan975.15$G6.SS > 0, ifelse(quan975.15$G6.SS > holiday.15$G6.SS,0,1), 0)

anom.15 <- cbind.data.frame('date' = date.15, 'NRND' = anom.N.15.ND, 'NRSD' = anom.N.15.SD, 'NRED' = anom.N.15.ED, 'NRWD' = anom.N.15.WD,'CRND' = anom.C.15.ND, 
                            'CRSD' = anom.C.15.SD, 'SRND' = anom.S.15.ND, 'SRSD' = anom.S.15.SD)
anom.15 <- separate(data = anom.15, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 16
anom.N.16.ND = ifelse(quan975.16$G6.NN > 0, ifelse(quan975.16$G6.NN > holiday.16$G6.NN,0,1), 0)
anom.N.16.SD = ifelse(quan975.16$G6.NS > 0, ifelse(quan975.16$G6.NS > holiday.16$G6.NS,0,1), 0)
anom.N.16.ED = ifelse(quan975.16$G6.NE > 0, ifelse(quan975.16$G6.NE > holiday.16$G6.NE,0,1), 0)
anom.N.16.WD = ifelse(quan975.16$G6.NW > 0, ifelse(quan975.16$G6.NW > holiday.16$G6.NW,0,1), 0)
anom.C.16.ND = ifelse(quan975.16$G6.CN > 0, ifelse(quan975.16$G6.CN > holiday.16$G6.CN,0,1), 0)
anom.C.16.SD = ifelse(quan975.16$G6.CS > 0, ifelse(quan975.16$G6.CS > holiday.16$G6.CS,0,1), 0)
anom.S.16.ND = ifelse(quan975.16$G6.SN > 0, ifelse(quan975.16$G6.SN > holiday.16$G6.SN,0,1), 0)
anom.S.16.SD = ifelse(quan975.16$G6.SS > 0, ifelse(quan975.16$G6.SS > holiday.16$G6.SS,0,1), 0)

anom.16 <- cbind.data.frame('date' = date.16, 'NRND' = anom.N.16.ND, 'NRSD' = anom.N.16.SD, 'NRED' = anom.N.16.ED, 'NRWD' = anom.N.16.WD,'CRND' = anom.C.16.ND, 
                            'CRSD' = anom.C.16.SD, 'SRND' = anom.S.16.ND, 'SRSD' = anom.S.16.SD)
anom.16 <- separate(data = anom.16, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 17
anom.N.17.ND = ifelse(quan975.17$G6.NN > 0, ifelse(quan975.17$G6.NN > holiday.17$G6.NN,0,1), 0)
anom.N.17.SD = ifelse(quan975.17$G6.NS > 0, ifelse(quan975.17$G6.NS > holiday.17$G6.NS,0,1), 0)
anom.N.17.ED = ifelse(quan975.17$G6.NE > 0, ifelse(quan975.17$G6.NE > holiday.17$G6.NE,0,1), 0)
anom.N.17.WD = ifelse(quan975.17$G6.NW > 0, ifelse(quan975.17$G6.NW > holiday.17$G6.NW,0,1), 0)
anom.C.17.ND = ifelse(quan975.17$G6.CN > 0, ifelse(quan975.17$G6.CN > holiday.17$G6.CN,0,1), 0)
anom.C.17.SD = ifelse(quan975.17$G6.CS > 0, ifelse(quan975.17$G6.CS > holiday.17$G6.CS,0,1), 0)
anom.S.17.ND = ifelse(quan975.17$G6.SN > 0, ifelse(quan975.17$G6.SN > holiday.17$G6.SN,0,1), 0)
anom.S.17.SD = ifelse(quan975.17$G6.SS > 0, ifelse(quan975.17$G6.SS > holiday.17$G6.SS,0,1), 0)

anom.17 <- cbind.data.frame('date' = date.17, 'NRND' = anom.N.17.ND, 'NRSD' = anom.N.17.SD, 'NRED' = anom.N.17.ED, 'NRWD' = anom.N.17.WD,'CRND' = anom.C.17.ND, 
                            'CRSD' = anom.C.17.SD, 'SRND' = anom.S.17.ND, 'SRSD' = anom.S.17.SD)
anom.17 <- separate(data = anom.17, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 18
anom.N.18.ND = ifelse(quan975.18$G6.NN > 0, ifelse(quan975.18$G6.NN > holiday.18$G6.NN,0,1), 0)
anom.N.18.SD = ifelse(quan975.18$G6.NS > 0, ifelse(quan975.18$G6.NS > holiday.18$G6.NS,0,1), 0)
anom.N.18.ED = ifelse(quan975.18$G6.NE > 0, ifelse(quan975.18$G6.NE > holiday.18$G6.NE,0,1), 0)
anom.N.18.WD = ifelse(quan975.18$G6.NW > 0, ifelse(quan975.18$G6.NW > holiday.18$G6.NW,0,1), 0)
anom.C.18.ND = ifelse(quan975.18$G6.CN > 0, ifelse(quan975.18$G6.CN > holiday.18$G6.CN,0,1), 0)
anom.C.18.SD = ifelse(quan975.18$G6.CS > 0, ifelse(quan975.18$G6.CS > holiday.18$G6.CS,0,1), 0)
anom.S.18.ND = ifelse(quan975.18$G6.SN > 0, ifelse(quan975.18$G6.SN > holiday.18$G6.SN,0,1), 0)
anom.S.18.SD = ifelse(quan975.18$G6.SS > 0, ifelse(quan975.18$G6.SS > holiday.18$G6.SS,0,1), 0)

anom.18 <- cbind.data.frame('date' = date.18, 'NRND' = anom.N.18.ND, 'NRSD' = anom.N.18.SD, 'NRED' = anom.N.18.ED, 'NRWD' = anom.N.18.WD,'CRND' = anom.C.18.ND, 
                            'CRSD' = anom.C.18.SD, 'SRND' = anom.S.18.ND, 'SRSD' = anom.S.18.SD)
anom.18 <- separate(data = anom.18, col = date, into  = c('Date', 'Time'), sep = ' ')


write.csv(anom.1, 'anom.1.R.D.csv')
write.csv(anom.2, 'anom.2.R.D.csv')
write.csv(anom.3, 'anom.3.R.D.csv')
write.csv(anom.4, 'anom.4.R.D.csv')
write.csv(anom.5, 'anom.5.R.D.csv')
write.csv(anom.6, 'anom.6.R.D.csv')
write.csv(anom.7, 'anom.7.R.D.csv')
write.csv(anom.8, 'anom.8.R.D.csv')
write.csv(anom.9, 'anom.9.R.D.csv')
write.csv(anom.10, 'anom.10.R.D.csv')
write.csv(anom.11, 'anom.11.R.D.csv')
write.csv(anom.12, 'anom.12.R.D.csv')
write.csv(anom.13, 'anom.13.R.D.csv')
write.csv(anom.14, 'anom.14.R.D.csv')
write.csv(anom.15, 'anom.15.R.D.csv')
write.csv(anom.16, 'anom.16.R.D.csv')
write.csv(anom.17, 'anom.17.R.D.csv')
write.csv(anom.18, 'anom.18.R.D.csv')

#library(dplyr)
anom.2$cat <- ifelse(anom.2$Time == c('00:00:00', '01:00:00', '02:00:00', '03:00:00', '04:00:00', '05:00:00'), 'cat1', 
                     ifelse(anom.2$Time == c('06:00:00', '07:00:00', '08:00:00', '09:00:00', '10:00:00', '11:00:00'), 'cat2', 
                            ifelse(anom.2$Time == c('12:00:00', '13:00:00', '14:00:00', '15:00:00', '16:00:00', '17:00:00'), 'cat3', 'cat4')))
test <- split(anom.2, anom.2$cat)
anom.test <- lapply(test, function(x) {
  colSums(x[,sapply(x, is.numeric)])})
test2 <- do.call(rbind, anom.test)

All.anom.RD <- bind_rows(as.data.frame(test1), as.data.frame(test2), as.data.frame(test3), as.data.frame(test4), as.data.frame(test5), as.data.frame(test6), 
                         as.data.frame(test7), as.data.frame(test8), 
                         as.data.frame(test9), as.data.frame(test10), as.data.frame(test11), as.data.frame(test12), as.data.frame(test13), 
                         as.data.frame(test14), as.data.frame(test15), as.data.frame(test16), as.data.frame(test17), as.data.frame(test18))
write.csv(All.anom.RD, 'All.anom.RD.csv')
#############


All.anom.RD.1 <- read.csv('All.anom.RD2.csv', header = TRUE)[,-1]

No.days <- c(9, 4, 4, 3, 3, 4, 7, 3, 4, 3, 4, 4, 3, 3, 7, 3, 4, 1)
All.anom.RD <- matrix(NA, ncol = ncol(All.anom.RD.1), nrow = nrow(All.anom.RD.1))

#for(i in 1:nrow(All.anom.RD.1)){
#  All.anom.RD[i,] <- (as.numeric(All.anom.RD.1[i,]) - mean(as.numeric(All.anom.RD.1[i,])))/sd(as.numeric(All.anom.RD.1[i,]))
#}

for(i in 1:nrow(All.anom.RD.1)){
  All.anom.RD[i,] <- as.numeric(All.anom.RD.1[i,])/No.days[i]
}


colnames(All.anom.RD) <- colnames(All.anom.RD.1)
All.anom.RD <- as.data.frame(All.anom.RD)
All.anom.RD$date <- c(1:18)
# hollabs <- c("2019-02-02~02-10", "02-28~03-03", "04-04~04-07", '06-07~06-09', '09-13~09-15', '10-10~10-13',
#              '2020-01-23~01-29', '02-28~03-01', '04-02~04-05', '05-01~05-03', '06-25~06-28', '10-01~10-04',
#              '10-09~10-11', '2021-01-01~01-03', '02-10~02-16', '02-27~03-01', '04-02~04-05', '04-30~04-30')

hollabs <- c("2019-1", "2", "3", '4', '5', '6',
             '2020-1', '2', '3', '4', '5', '6',
             '7', '2021-1', '2', '3', '4', '5')


p1 <- ggplot(All.anom.RD, aes(date)) + 
  geom_line(aes(y = NRND.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = NRND.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = NRND.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = NRND.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  ylab('Count')+xlab('') +
  labs(colour = "Time")  +
  ggtitle("North region - North direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_blank(),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_text(size = 20))

p2 <- ggplot(All.anom.RD, aes(date)) + 
  geom_line(aes(y = NRSD.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = NRSD.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = NRSD.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = NRSD.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  ylab('')+xlab('') +
  labs(colour = "Time")  +
  ggtitle("North region - South direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_blank(),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

p3 <- ggplot(All.anom.RD, aes(date)) + 
  geom_line(aes(y = NRED.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = NRED.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = NRED.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = NRED.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  ylab('')+xlab('') +
  labs(colour = "Time")  +
  ggtitle("North region - East direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_blank(),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())


p4 <- ggplot(All.anom.RD, aes(date)) + 
  geom_line(aes(y = NRWD.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = NRWD.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = NRWD.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = NRWD.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  ylab('')+xlab('') +
  labs(colour = "Time")  +
  ggtitle("North region - West direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_blank(),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

p5 <- ggplot(All.anom.RD, aes(date)) + 
  geom_line(aes(y = CRND.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = CRND.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = CRND.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = CRND.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  scale_x_continuous(breaks = 1:18, labels = hollabs) +
  ylab('Count')+ xlab('Holiday') +
  labs(colour = "Time")  +
  ggtitle("Center region - North direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_text(size = 20, angle = 45, hjust = 1, vjust = 0.5),
    #axis.text.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_text(size = 20))

p6 <- ggplot(All.anom.RD, aes(date)) + 
  geom_line(aes(y = CRSD.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = CRSD.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = CRSD.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = CRSD.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  scale_x_continuous(breaks = 1:18, labels = hollabs) +
  ylab('')+ xlab('Holiday') +
  labs(colour = "Time")  +
  ggtitle("Center region - North direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_text(size = 20, angle = 45, hjust = 1, vjust = 0.5),
    #axis.text.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

p7 <- ggplot(All.anom.RD, aes(date)) + 
  geom_line(aes(y = SRND.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = SRND.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = SRND.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = SRND.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  scale_x_continuous(breaks = 1:18, labels = hollabs) +
  ylab('')+ xlab('Holiday') +
  labs(colour = "Time")  +
  ggtitle("South region - North direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_text(size = 20, angle = 45, hjust = 1, vjust = 0.5),
    #axis.text.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

p8 <- ggplot(All.anom.RD, aes(date)) + 
  geom_line(aes(y = SRSD.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = SRSD.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = SRSD.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = SRSD.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  scale_x_continuous(breaks = 1:18, labels = hollabs) +
  ylab('')+ xlab('Holiday') +
  labs(colour = "Time")  +
  ggtitle("South region - South direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_text(size = 20, angle = 45, hjust = 1, vjust = 0.5),
    #axis.text.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

library(ggpubr)
ggarrange(p1, p2, p3, p4, p5, p6, p7, p8, ncol=4, nrow=2, common.legend = TRUE, legend="top", heights = c(1, 1, 1, 1), widths = c(1,1,1,1))


# All.anom.RD %>%
#   gather(key,value, NRND.1, NRND.2, NRND.3, NRND.4) %>%
#   ggplot(aes(x=date, y=value, colour=key)) +
#   geom_line()


ggplot() + geom_line(aes(y = All.anom.RD$NRND.1),color='red') + 
  #geom_line(aes=All.anom.RD$NRND.2),color='blue') + 
  ylab('Values')+xlab('date')

plot(All.anom.RD$NRND.1, type = 'l')


#####################
### compare values to detect anomalies: Freeway by Direction
#####################
## Holiday 1

anom.N1.1.ND = ifelse(quan975.1$G9.2N > 0, ifelse(quan975.1$G9.2N > holiday.1$G9.2N,0,1), 0)
anom.N1.1.SD = ifelse(quan975.1$G9.2S > 0, ifelse(quan975.1$G9.2S > holiday.1$G9.2S,0,1), 0)
anom.N3.1.ND = ifelse(quan975.1$G9.3N > 0, ifelse(quan975.1$G9.3N > holiday.1$G9.3N,0,1), 0)
anom.N3.1.SD = ifelse(quan975.1$G9.3S > 0, ifelse(quan975.1$G9.3S > holiday.1$G9.3S,0,1), 0)
anom.EN1.1.ND = ifelse(quan975.1$G9.1N > 0, ifelse(quan975.1$G9.1N > holiday.1$G9.1N,0,1), 0)
anom.EN1.1.SD = ifelse(quan975.1$G9.1S > 0, ifelse(quan975.1$G9.1S > holiday.1$G9.1S,0,1), 0)
anom.EN1.1.ED = ifelse(quan975.1$G9.1E > 0, ifelse(quan975.1$G9.1E > holiday.1$G9.1E,0,1), 0)
anom.EN1.1.WD = ifelse(quan975.1$G9.1W > 0, ifelse(quan975.1$G9.1W > holiday.1$G9.1W,0,1), 0)


anom.1 <- cbind.data.frame('date' = date.1, 'N1ND' = anom.N1.1.ND, 'N1SD' = anom.N1.1.SD, 'N3ND' = anom.N3.1.ND, 'N3SD' = anom.N3.1.SD,'EN1ND' = anom.EN1.1.ND, 
                           'EN1SD' = anom.EN1.1.SD, 'EN1ED' = anom.EN1.1.ED, 'EN1WD' = anom.EN1.1.WD)
library(tidyverse)
anom.1 <- separate(data = anom.1, col = date, into  = c('Date', 'Time'), sep = ' ')


## Holiday 2
anom.N1.2.ND = ifelse(quan975.2$G9.2N > 0, ifelse(quan975.2$G9.2N > holiday.2$G9.2N,0,1), 0)
anom.N1.2.SD = ifelse(quan975.2$G9.2S > 0, ifelse(quan975.2$G9.2S > holiday.2$G9.2S,0,1), 0)
anom.N3.2.ND = ifelse(quan975.2$G9.3N > 0, ifelse(quan975.2$G9.3N > holiday.2$G9.3N,0,1), 0)
anom.N3.2.SD = ifelse(quan975.2$G9.3S > 0, ifelse(quan975.2$G9.3S > holiday.2$G9.3S,0,1), 0)
anom.EN1.2.ND = ifelse(quan975.2$G9.1N > 0, ifelse(quan975.2$G9.1N > holiday.2$G9.1N,0,1), 0)
anom.EN1.2.SD = ifelse(quan975.2$G9.1S > 0, ifelse(quan975.2$G9.1S > holiday.2$G9.1S,0,1), 0)
anom.EN1.2.ED = ifelse(quan975.2$G9.1E > 0, ifelse(quan975.2$G9.1E > holiday.2$G9.1E,0,1), 0)
anom.EN1.2.WD = ifelse(quan975.2$G9.1W > 0, ifelse(quan975.2$G9.1W > holiday.2$G9.1W,0,1), 0)



anom.2 <- cbind.data.frame('date' = date.2, 'N1ND' = anom.N1.2.ND, 'N1SD' = anom.N1.2.SD, 'N3ND' = anom.N3.2.ND, 'N3SD' = anom.N3.2.SD,'EN1ND' = anom.EN1.2.ND, 
                           'EN1SD' = anom.EN1.2.SD, 'EN1ED' = anom.EN1.2.ED, 'EN1WD' = anom.EN1.2.WD)
library(tidyverse)
anom.2 <- separate(data = anom.2, col = date, into  = c('Date', 'Time'), sep = ' ')

## Holiday 3
anom.N1.3.ND = ifelse(quan975.3$G9.2N > 0, ifelse(quan975.3$G9.2N > holiday.3$G9.2N,0,1), 0)
anom.N1.3.SD = ifelse(quan975.3$G9.2S > 0, ifelse(quan975.3$G9.2S > holiday.3$G9.2S,0,1), 0)
anom.N3.3.ND = ifelse(quan975.3$G9.3N > 0, ifelse(quan975.3$G9.3N > holiday.3$G9.3N,0,1), 0)
anom.N3.3.SD = ifelse(quan975.3$G9.3S > 0, ifelse(quan975.3$G9.3S > holiday.3$G9.3S,0,1), 0)
anom.EN1.3.ND = ifelse(quan975.3$G9.1N > 0, ifelse(quan975.3$G9.1N > holiday.3$G9.1N,0,1), 0)
anom.EN1.3.SD = ifelse(quan975.3$G9.1S > 0, ifelse(quan975.3$G9.1S > holiday.3$G9.1S,0,1), 0)
anom.EN1.3.ED = ifelse(quan975.3$G9.1E > 0, ifelse(quan975.3$G9.1E > holiday.3$G9.1E,0,1), 0)
anom.EN1.3.WD = ifelse(quan975.3$G9.1W > 0, ifelse(quan975.3$G9.1W > holiday.3$G9.1W,0,1), 0)



anom.3 <- cbind.data.frame('date' = date.3, 'N1ND' = anom.N1.3.ND, 'N1SD' = anom.N1.3.SD, 'N3ND' = anom.N3.3.ND, 'N3SD' = anom.N3.3.SD,'EN1ND' = anom.EN1.3.ND, 
                           'EN1SD' = anom.EN1.3.SD, 'EN1ED' = anom.EN1.3.ED, 'EN1WD' = anom.EN1.3.WD)
library(tidyverse)
anom.3 <- separate(data = anom.3, col = date, into  = c('Date', 'Time'), sep = ' ')

## Holiday 4
anom.N1.4.ND = ifelse(quan975.4$G9.2N > 0, ifelse(quan975.4$G9.2N > holiday.4$G9.2N,0,1), 0)
anom.N1.4.SD = ifelse(quan975.4$G9.2S > 0, ifelse(quan975.4$G9.2S > holiday.4$G9.2S,0,1), 0)
anom.N3.4.ND = ifelse(quan975.4$G9.3N > 0, ifelse(quan975.4$G9.3N > holiday.4$G9.3N,0,1), 0)
anom.N3.4.SD = ifelse(quan975.4$G9.3S > 0, ifelse(quan975.4$G9.3S > holiday.4$G9.3S,0,1), 0)
anom.EN1.4.ND = ifelse(quan975.4$G9.1N > 0, ifelse(quan975.4$G9.1N > holiday.4$G9.1N,0,1), 0)
anom.EN1.4.SD = ifelse(quan975.4$G9.1S > 0, ifelse(quan975.4$G9.1S > holiday.4$G9.1S,0,1), 0)
anom.EN1.4.ED = ifelse(quan975.4$G9.1E > 0, ifelse(quan975.4$G9.1E > holiday.4$G9.1E,0,1), 0)
anom.EN1.4.WD = ifelse(quan975.4$G9.1W > 0, ifelse(quan975.4$G9.1W > holiday.4$G9.1W,0,1), 0)



anom.4 <- cbind.data.frame('date' = date.4, 'N1ND' = anom.N1.4.ND, 'N1SD' = anom.N1.4.SD, 'N3ND' = anom.N3.4.ND, 'N3SD' = anom.N3.4.SD,'EN1ND' = anom.EN1.4.ND, 
                           'EN1SD' = anom.EN1.4.SD, 'EN1ED' = anom.EN1.4.ED, 'EN1WD' = anom.EN1.4.WD)
library(tidyverse)
anom.4 <- separate(data = anom.4, col = date, into  = c('Date', 'Time'), sep = ' ')

## Holiday 5
anom.N1.5.ND = ifelse(quan975.5$G9.2N > 0, ifelse(quan975.5$G9.2N > holiday.5$G9.2N,0,1), 0)
anom.N1.5.SD = ifelse(quan975.5$G9.2S > 0, ifelse(quan975.5$G9.2S > holiday.5$G9.2S,0,1), 0)
anom.N3.5.ND = ifelse(quan975.5$G9.3N > 0, ifelse(quan975.5$G9.3N > holiday.5$G9.3N,0,1), 0)
anom.N3.5.SD = ifelse(quan975.5$G9.3S > 0, ifelse(quan975.5$G9.3S > holiday.5$G9.3S,0,1), 0)
anom.EN1.5.ND = ifelse(quan975.5$G9.1N > 0, ifelse(quan975.5$G9.1N > holiday.5$G9.1N,0,1), 0)
anom.EN1.5.SD = ifelse(quan975.5$G9.1S > 0, ifelse(quan975.5$G9.1S > holiday.5$G9.1S,0,1), 0)
anom.EN1.5.ED = ifelse(quan975.5$G9.1E > 0, ifelse(quan975.5$G9.1E > holiday.5$G9.1E,0,1), 0)
anom.EN1.5.WD = ifelse(quan975.5$G9.1W > 0, ifelse(quan975.5$G9.1W > holiday.5$G9.1W,0,1), 0)


anom.5 <- cbind.data.frame('date' = date.5, 'N1ND' = anom.N1.5.ND, 'N1SD' = anom.N1.5.SD, 'N3ND' = anom.N3.5.ND, 'N3SD' = anom.N3.5.SD,'EN1ND' = anom.EN1.5.ND, 
                           'EN1SD' = anom.EN1.5.SD, 'EN1ED' = anom.EN1.5.ED, 'EN1WD' = anom.EN1.5.WD)
library(tidyverse)
anom.5 <- separate(data = anom.5, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 6
anom.N1.6.ND = ifelse(quan975.6$G9.2N > 0, ifelse(quan975.6$G9.2N > holiday.6$G9.2N,0,1), 0)
anom.N1.6.SD = ifelse(quan975.6$G9.2S > 0, ifelse(quan975.6$G9.2S > holiday.6$G9.2S,0,1), 0)
anom.N3.6.ND = ifelse(quan975.6$G9.3N > 0, ifelse(quan975.6$G9.3N > holiday.6$G9.3N,0,1), 0)
anom.N3.6.SD = ifelse(quan975.6$G9.3S > 0, ifelse(quan975.6$G9.3S > holiday.6$G9.3S,0,1), 0)
anom.EN1.6.ND = ifelse(quan975.6$G9.1N > 0, ifelse(quan975.6$G9.1N > holiday.6$G9.1N,0,1), 0)
anom.EN1.6.SD = ifelse(quan975.6$G9.1S > 0, ifelse(quan975.6$G9.1S > holiday.6$G9.1S,0,1), 0)
anom.EN1.6.ED = ifelse(quan975.6$G9.1E > 0, ifelse(quan975.6$G9.1E > holiday.6$G9.1E,0,1), 0)
anom.EN1.6.WD = ifelse(quan975.6$G9.1W > 0, ifelse(quan975.6$G9.1W > holiday.6$G9.1W,0,1), 0)


anom.6 <- cbind.data.frame('date' = date.6, 'N1ND' = anom.N1.6.ND, 'N1SD' = anom.N1.6.SD, 'N3ND' = anom.N3.6.ND, 'N3SD' = anom.N3.6.SD,'EN1ND' = anom.EN1.6.ND, 
                           'EN1SD' = anom.EN1.6.SD, 'EN1ED' = anom.EN1.6.ED, 'EN1WD' = anom.EN1.6.WD)
library(tidyverse)
anom.6 <- separate(data = anom.6, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 7
anom.N1.7.ND = ifelse(quan975.7$G9.2N > 0, ifelse(quan975.7$G9.2N > holiday.7$G9.2N,0,1), 0)
anom.N1.7.SD = ifelse(quan975.7$G9.2S > 0, ifelse(quan975.7$G9.2S > holiday.7$G9.2S,0,1), 0)
anom.N3.7.ND = ifelse(quan975.7$G9.3N > 0, ifelse(quan975.7$G9.3N > holiday.7$G9.3N,0,1), 0)
anom.N3.7.SD = ifelse(quan975.7$G9.3S > 0, ifelse(quan975.7$G9.3S > holiday.7$G9.3S,0,1), 0)
anom.EN1.7.ND = ifelse(quan975.7$G9.1N > 0, ifelse(quan975.7$G9.1N > holiday.7$G9.1N,0,1), 0)
anom.EN1.7.SD = ifelse(quan975.7$G9.1S > 0, ifelse(quan975.7$G9.1S > holiday.7$G9.1S,0,1), 0)
anom.EN1.7.ED = ifelse(quan975.7$G9.1E > 0, ifelse(quan975.7$G9.1E > holiday.7$G9.1E,0,1), 0)
anom.EN1.7.WD = ifelse(quan975.7$G9.1W > 0, ifelse(quan975.7$G9.1W > holiday.7$G9.1W,0,1), 0)


anom.7 <- cbind.data.frame('date' = date.7, 'N1ND' = anom.N1.7.ND, 'N1SD' = anom.N1.7.SD, 'N3ND' = anom.N3.7.ND, 'N3SD' = anom.N3.7.SD,'EN1ND' = anom.EN1.7.ND, 
                           'EN1SD' = anom.EN1.7.SD, 'EN1ED' = anom.EN1.7.ED, 'EN1WD' = anom.EN1.7.WD)
library(tidyverse)
anom.7 <- separate(data = anom.7, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 8
anom.N1.8.ND = ifelse(quan975.8$G9.2N > 0, ifelse(quan975.8$G9.2N > holiday.8$G9.2N,0,1), 0)
anom.N1.8.SD = ifelse(quan975.8$G9.2S > 0, ifelse(quan975.8$G9.2S > holiday.8$G9.2S,0,1), 0)
anom.N3.8.ND = ifelse(quan975.8$G9.3N > 0, ifelse(quan975.8$G9.3N > holiday.8$G9.3N,0,1), 0)
anom.N3.8.SD = ifelse(quan975.8$G9.3S > 0, ifelse(quan975.8$G9.3S > holiday.8$G9.3S,0,1), 0)
anom.EN1.8.ND = ifelse(quan975.8$G9.1N > 0, ifelse(quan975.8$G9.1N > holiday.8$G9.1N,0,1), 0)
anom.EN1.8.SD = ifelse(quan975.8$G9.1S > 0, ifelse(quan975.8$G9.1S > holiday.8$G9.1S,0,1), 0)
anom.EN1.8.ED = ifelse(quan975.8$G9.1E > 0, ifelse(quan975.8$G9.1E > holiday.8$G9.1E,0,1), 0)
anom.EN1.8.WD = ifelse(quan975.8$G9.1W > 0, ifelse(quan975.8$G9.1W > holiday.8$G9.1W,0,1), 0)


anom.8 <- cbind.data.frame('date' = date.8, 'N1ND' = anom.N1.8.ND, 'N1SD' = anom.N1.8.SD, 'N3ND' = anom.N3.8.ND, 'N3SD' = anom.N3.8.SD,'EN1ND' = anom.EN1.8.ND, 
                           'EN1SD' = anom.EN1.8.SD, 'EN1ED' = anom.EN1.8.ED, 'EN1WD' = anom.EN1.8.WD)
library(tidyverse)
anom.8 <- separate(data = anom.8, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 9
anom.N1.9.ND = ifelse(quan975.9$G9.2N > 0, ifelse(quan975.9$G9.2N > holiday.9$G9.2N,0,1), 0)
anom.N1.9.SD = ifelse(quan975.9$G9.2S > 0, ifelse(quan975.9$G9.2S > holiday.9$G9.2S,0,1), 0)
anom.N3.9.ND = ifelse(quan975.9$G9.3N > 0, ifelse(quan975.9$G9.3N > holiday.9$G9.3N,0,1), 0)
anom.N3.9.SD = ifelse(quan975.9$G9.3S > 0, ifelse(quan975.9$G9.3S > holiday.9$G9.3S,0,1), 0)
anom.EN1.9.ND = ifelse(quan975.9$G9.1N > 0, ifelse(quan975.9$G9.1N > holiday.9$G9.1N,0,1), 0)
anom.EN1.9.SD = ifelse(quan975.9$G9.1S > 0, ifelse(quan975.9$G9.1S > holiday.9$G9.1S,0,1), 0)
anom.EN1.9.ED = ifelse(quan975.9$G9.1E > 0, ifelse(quan975.9$G9.1E > holiday.9$G9.1E,0,1), 0)
anom.EN1.9.WD = ifelse(quan975.9$G9.1W > 0, ifelse(quan975.9$G9.1W > holiday.9$G9.1W,0,1), 0)


anom.9 <- cbind.data.frame('date' = date.9, 'N1ND' = anom.N1.9.ND, 'N1SD' = anom.N1.9.SD, 'N3ND' = anom.N3.9.ND, 'N3SD' = anom.N3.9.SD,'EN1ND' = anom.EN1.9.ND, 
                           'EN1SD' = anom.EN1.9.SD, 'EN1ED' = anom.EN1.9.ED, 'EN1WD' = anom.EN1.9.WD)
library(tidyverse)
anom.9 <- separate(data = anom.9, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 10
anom.N1.10.ND = ifelse(quan975.10$G9.2N > 0, ifelse(quan975.10$G9.2N > holiday.10$G9.2N,0,1), 0)
anom.N1.10.SD = ifelse(quan975.10$G9.2S > 0, ifelse(quan975.10$G9.2S > holiday.10$G9.2S,0,1), 0)
anom.N3.10.ND = ifelse(quan975.10$G9.3N > 0, ifelse(quan975.10$G9.3N > holiday.10$G9.3N,0,1), 0)
anom.N3.10.SD = ifelse(quan975.10$G9.3S > 0, ifelse(quan975.10$G9.3S > holiday.10$G9.3S,0,1), 0)
anom.EN1.10.ND = ifelse(quan975.10$G9.1N > 0, ifelse(quan975.10$G9.1N > holiday.10$G9.1N,0,1), 0)
anom.EN1.10.SD = ifelse(quan975.10$G9.1S > 0, ifelse(quan975.10$G9.1S > holiday.10$G9.1S,0,1), 0)
anom.EN1.10.ED = ifelse(quan975.10$G9.1E > 0, ifelse(quan975.10$G9.1E > holiday.10$G9.1E,0,1), 0)
anom.EN1.10.WD = ifelse(quan975.10$G9.1W > 0, ifelse(quan975.10$G9.1W > holiday.10$G9.1W,0,1), 0)


anom.10 <- cbind.data.frame('date' = date.10, 'N1ND' = anom.N1.10.ND, 'N1SD' = anom.N1.10.SD, 'N3ND' = anom.N3.10.ND, 'N3SD' = anom.N3.10.SD,'EN1ND' = anom.EN1.10.ND, 
                            'EN1SD' = anom.EN1.10.SD, 'EN1ED' = anom.EN1.10.ED, 'EN1WD' = anom.EN1.10.WD)
library(tidyverse)
anom.10 <- separate(data = anom.10, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 11
anom.N1.11.ND = ifelse(quan975.11$G9.2N > 0, ifelse(quan975.11$G9.2N > holiday.11$G9.2N,0,1), 0)
anom.N1.11.SD = ifelse(quan975.11$G9.2S > 0, ifelse(quan975.11$G9.2S > holiday.11$G9.2S,0,1), 0)
anom.N3.11.ND = ifelse(quan975.11$G9.3N > 0, ifelse(quan975.11$G9.3N > holiday.11$G9.3N,0,1), 0)
anom.N3.11.SD = ifelse(quan975.11$G9.3S > 0, ifelse(quan975.11$G9.3S > holiday.11$G9.3S,0,1), 0)
anom.EN1.11.ND = ifelse(quan975.11$G9.1N > 0, ifelse(quan975.11$G9.1N > holiday.11$G9.1N,0,1), 0)
anom.EN1.11.SD = ifelse(quan975.11$G9.1S > 0, ifelse(quan975.11$G9.1S > holiday.11$G9.1S,0,1), 0)
anom.EN1.11.ED = ifelse(quan975.11$G9.1E > 0, ifelse(quan975.11$G9.1E > holiday.11$G9.1E,0,1), 0)
anom.EN1.11.WD = ifelse(quan975.11$G9.1W > 0, ifelse(quan975.11$G9.1W > holiday.11$G9.1W,0,1), 0)


anom.11 <- cbind.data.frame('date' = date.11, 'N1ND' = anom.N1.11.ND, 'N1SD' = anom.N1.11.SD, 'N3ND' = anom.N3.11.ND, 'N3SD' = anom.N3.11.SD,'EN1ND' = anom.EN1.11.ND, 
                            'EN1SD' = anom.EN1.11.SD, 'EN1ED' = anom.EN1.11.ED, 'EN1WD' = anom.EN1.11.WD)
library(tidyverse)
anom.11 <- separate(data = anom.11, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 12
anom.N1.12.ND = ifelse(quan975.12$G9.2N > 0, ifelse(quan975.12$G9.2N > holiday.12$G9.2N,0,1), 0)
anom.N1.12.SD = ifelse(quan975.12$G9.2S > 0, ifelse(quan975.12$G9.2S > holiday.12$G9.2S,0,1), 0)
anom.N3.12.ND = ifelse(quan975.12$G9.3N > 0, ifelse(quan975.12$G9.3N > holiday.12$G9.3N,0,1), 0)
anom.N3.12.SD = ifelse(quan975.12$G9.3S > 0, ifelse(quan975.12$G9.3S > holiday.12$G9.3S,0,1), 0)
anom.EN1.12.ND = ifelse(quan975.12$G9.1N > 0, ifelse(quan975.12$G9.1N > holiday.12$G9.1N,0,1), 0)
anom.EN1.12.SD = ifelse(quan975.12$G9.1S > 0, ifelse(quan975.12$G9.1S > holiday.12$G9.1S,0,1), 0)
anom.EN1.12.ED = ifelse(quan975.12$G9.1E > 0, ifelse(quan975.12$G9.1E > holiday.12$G9.1E,0,1), 0)
anom.EN1.12.WD = ifelse(quan975.12$G9.1W > 0, ifelse(quan975.12$G9.1W > holiday.12$G9.1W,0,1), 0)


anom.12 <- cbind.data.frame('date' = date.12, 'N1ND' = anom.N1.12.ND, 'N1SD' = anom.N1.12.SD, 'N3ND' = anom.N3.12.ND, 'N3SD' = anom.N3.12.SD,'EN1ND' = anom.EN1.12.ND, 
                            'EN1SD' = anom.EN1.12.SD, 'EN1ED' = anom.EN1.12.ED, 'EN1WD' = anom.EN1.12.WD)
library(tidyverse)
anom.12 <- separate(data = anom.12, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 13
anom.N1.13.ND = ifelse(quan975.13$G9.2N > 0, ifelse(quan975.13$G9.2N > holiday.13$G9.2N,0,1), 0)
anom.N1.13.SD = ifelse(quan975.13$G9.2S > 0, ifelse(quan975.13$G9.2S > holiday.13$G9.2S,0,1), 0)
anom.N3.13.ND = ifelse(quan975.13$G9.3N > 0, ifelse(quan975.13$G9.3N > holiday.13$G9.3N,0,1), 0)
anom.N3.13.SD = ifelse(quan975.13$G9.3S > 0, ifelse(quan975.13$G9.3S > holiday.13$G9.3S,0,1), 0)
anom.EN1.13.ND = ifelse(quan975.13$G9.1N > 0, ifelse(quan975.13$G9.1N > holiday.13$G9.1N,0,1), 0)
anom.EN1.13.SD = ifelse(quan975.13$G9.1S > 0, ifelse(quan975.13$G9.1S > holiday.13$G9.1S,0,1), 0)
anom.EN1.13.ED = ifelse(quan975.13$G9.1E > 0, ifelse(quan975.13$G9.1E > holiday.13$G9.1E,0,1), 0)
anom.EN1.13.WD = ifelse(quan975.13$G9.1W > 0, ifelse(quan975.13$G9.1W > holiday.13$G9.1W,0,1), 0)


anom.13 <- cbind.data.frame('date' = date.13, 'N1ND' = anom.N1.13.ND, 'N1SD' = anom.N1.13.SD, 'N3ND' = anom.N3.13.ND, 'N3SD' = anom.N3.13.SD,'EN1ND' = anom.EN1.13.ND, 
                            'EN1SD' = anom.EN1.13.SD, 'EN1ED' = anom.EN1.13.ED, 'EN1WD' = anom.EN1.13.WD)
library(tidyverse)
anom.13 <- separate(data = anom.13, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 14
anom.N1.14.ND = ifelse(quan975.14$G9.2N > 0, ifelse(quan975.14$G9.2N > holiday.14$G9.2N,0,1), 0)
anom.N1.14.SD = ifelse(quan975.14$G9.2S > 0, ifelse(quan975.14$G9.2S > holiday.14$G9.2S,0,1), 0)
anom.N3.14.ND = ifelse(quan975.14$G9.3N > 0, ifelse(quan975.14$G9.3N > holiday.14$G9.3N,0,1), 0)
anom.N3.14.SD = ifelse(quan975.14$G9.3S > 0, ifelse(quan975.14$G9.3S > holiday.14$G9.3S,0,1), 0)
anom.EN1.14.ND = ifelse(quan975.14$G9.1N > 0, ifelse(quan975.14$G9.1N > holiday.14$G9.1N,0,1), 0)
anom.EN1.14.SD = ifelse(quan975.14$G9.1S > 0, ifelse(quan975.14$G9.1S > holiday.14$G9.1S,0,1), 0)
anom.EN1.14.ED = ifelse(quan975.14$G9.1E > 0, ifelse(quan975.14$G9.1E > holiday.14$G9.1E,0,1), 0)
anom.EN1.14.WD = ifelse(quan975.14$G9.1W > 0, ifelse(quan975.14$G9.1W > holiday.14$G9.1W,0,1), 0)


anom.14 <- cbind.data.frame('date' = date.14, 'N1ND' = anom.N1.14.ND, 'N1SD' = anom.N1.14.SD, 'N3ND' = anom.N3.14.ND, 'N3SD' = anom.N3.14.SD,'EN1ND' = anom.EN1.14.ND, 
                            'EN1SD' = anom.EN1.14.SD, 'EN1ED' = anom.EN1.14.ED, 'EN1WD' = anom.EN1.14.WD)
library(tidyverse)
anom.14 <- separate(data = anom.14, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 15
anom.N1.15.ND = ifelse(quan975.15$G9.2N > 0, ifelse(quan975.15$G9.2N > holiday.15$G9.2N,0,1), 0)
anom.N1.15.SD = ifelse(quan975.15$G9.2S > 0, ifelse(quan975.15$G9.2S > holiday.15$G9.2S,0,1), 0)
anom.N3.15.ND = ifelse(quan975.15$G9.3N > 0, ifelse(quan975.15$G9.3N > holiday.15$G9.3N,0,1), 0)
anom.N3.15.SD = ifelse(quan975.15$G9.3S > 0, ifelse(quan975.15$G9.3S > holiday.15$G9.3S,0,1), 0)
anom.EN1.15.ND = ifelse(quan975.15$G9.1N > 0, ifelse(quan975.15$G9.1N > holiday.15$G9.1N,0,1), 0)
anom.EN1.15.SD = ifelse(quan975.15$G9.1S > 0, ifelse(quan975.15$G9.1S > holiday.15$G9.1S,0,1), 0)
anom.EN1.15.ED = ifelse(quan975.15$G9.1E > 0, ifelse(quan975.15$G9.1E > holiday.15$G9.1E,0,1), 0)
anom.EN1.15.WD = ifelse(quan975.15$G9.1W > 0, ifelse(quan975.15$G9.1W > holiday.15$G9.1W,0,1), 0)


anom.15 <- cbind.data.frame('date' = date.15, 'N1ND' = anom.N1.15.ND, 'N1SD' = anom.N1.15.SD, 'N3ND' = anom.N3.15.ND, 'N3SD' = anom.N3.15.SD,'EN1ND' = anom.EN1.15.ND, 
                            'EN1SD' = anom.EN1.15.SD, 'EN1ED' = anom.EN1.15.ED, 'EN1WD' = anom.EN1.15.WD)
library(tidyverse)
anom.15 <- separate(data = anom.15, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 16
anom.N1.16.ND = ifelse(quan975.16$G9.2N > 0, ifelse(quan975.16$G9.2N > holiday.16$G9.2N,0,1), 0)
anom.N1.16.SD = ifelse(quan975.16$G9.2S > 0, ifelse(quan975.16$G9.2S > holiday.16$G9.2S,0,1), 0)
anom.N3.16.ND = ifelse(quan975.16$G9.3N > 0, ifelse(quan975.16$G9.3N > holiday.16$G9.3N,0,1), 0)
anom.N3.16.SD = ifelse(quan975.16$G9.3S > 0, ifelse(quan975.16$G9.3S > holiday.16$G9.3S,0,1), 0)
anom.EN1.16.ND = ifelse(quan975.16$G9.1N > 0, ifelse(quan975.16$G9.1N > holiday.16$G9.1N,0,1), 0)
anom.EN1.16.SD = ifelse(quan975.16$G9.1S > 0, ifelse(quan975.16$G9.1S > holiday.16$G9.1S,0,1), 0)
anom.EN1.16.ED = ifelse(quan975.16$G9.1E > 0, ifelse(quan975.16$G9.1E > holiday.16$G9.1E,0,1), 0)
anom.EN1.16.WD = ifelse(quan975.16$G9.1W > 0, ifelse(quan975.16$G9.1W > holiday.16$G9.1W,0,1), 0)


anom.16 <- cbind.data.frame('date' = date.16, 'N1ND' = anom.N1.16.ND, 'N1SD' = anom.N1.16.SD, 'N3ND' = anom.N3.16.ND, 'N3SD' = anom.N3.16.SD,'EN1ND' = anom.EN1.16.ND, 
                            'EN1SD' = anom.EN1.16.SD, 'EN1ED' = anom.EN1.16.ED, 'EN1WD' = anom.EN1.16.WD)
library(tidyverse)
anom.16 <- separate(data = anom.16, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 17
anom.N1.17.ND = ifelse(quan975.17$G9.2N > 0, ifelse(quan975.17$G9.2N > holiday.17$G9.2N,0,1), 0)
anom.N1.17.SD = ifelse(quan975.17$G9.2S > 0, ifelse(quan975.17$G9.2S > holiday.17$G9.2S,0,1), 0)
anom.N3.17.ND = ifelse(quan975.17$G9.3N > 0, ifelse(quan975.17$G9.3N > holiday.17$G9.3N,0,1), 0)
anom.N3.17.SD = ifelse(quan975.17$G9.3S > 0, ifelse(quan975.17$G9.3S > holiday.17$G9.3S,0,1), 0)
anom.EN1.17.ND = ifelse(quan975.17$G9.1N > 0, ifelse(quan975.17$G9.1N > holiday.17$G9.1N,0,1), 0)
anom.EN1.17.SD = ifelse(quan975.17$G9.1S > 0, ifelse(quan975.17$G9.1S > holiday.17$G9.1S,0,1), 0)
anom.EN1.17.ED = ifelse(quan975.17$G9.1E > 0, ifelse(quan975.17$G9.1E > holiday.17$G9.1E,0,1), 0)
anom.EN1.17.WD = ifelse(quan975.17$G9.1W > 0, ifelse(quan975.17$G9.1W > holiday.17$G9.1W,0,1), 0)


anom.17 <- cbind.data.frame('date' = date.17, 'N1ND' = anom.N1.17.ND, 'N1SD' = anom.N1.17.SD, 'N3ND' = anom.N3.17.ND, 'N3SD' = anom.N3.17.SD,'EN1ND' = anom.EN1.17.ND, 
                            'EN1SD' = anom.EN1.17.SD, 'EN1ED' = anom.EN1.17.ED, 'EN1WD' = anom.EN1.17.WD)
library(tidyverse)
anom.17 <- separate(data = anom.17, col = date, into  = c('Date', 'Time'), sep = ' ')
## Holiday 18
anom.N1.18.ND = ifelse(quan975.18$G9.2N > 0, ifelse(quan975.18$G9.2N > holiday.18$G9.2N,0,1), 0)
anom.N1.18.SD = ifelse(quan975.18$G9.2S > 0, ifelse(quan975.18$G9.2S > holiday.18$G9.2S,0,1), 0)
anom.N3.18.ND = ifelse(quan975.18$G9.3N > 0, ifelse(quan975.18$G9.3N > holiday.18$G9.3N,0,1), 0)
anom.N3.18.SD = ifelse(quan975.18$G9.3S > 0, ifelse(quan975.18$G9.3S > holiday.18$G9.3S,0,1), 0)
anom.EN1.18.ND = ifelse(quan975.18$G9.1N > 0, ifelse(quan975.18$G9.1N > holiday.18$G9.1N,0,1), 0)
anom.EN1.18.SD = ifelse(quan975.18$G9.1S > 0, ifelse(quan975.18$G9.1S > holiday.18$G9.1S,0,1), 0)
anom.EN1.18.ED = ifelse(quan975.18$G9.1E > 0, ifelse(quan975.18$G9.1E > holiday.18$G9.1E,0,1), 0)
anom.EN1.18.WD = ifelse(quan975.18$G9.1W > 0, ifelse(quan975.18$G9.1W > holiday.18$G9.1W,0,1), 0)


anom.18 <- cbind.data.frame('date' = date.18, 'N1ND' = anom.N1.18.ND, 'N1SD' = anom.N1.18.SD, 'N3ND' = anom.N3.18.ND, 'N3SD' = anom.N3.18.SD,'EN1ND' = anom.EN1.18.ND, 
                            'EN1SD' = anom.EN1.18.SD, 'EN1ED' = anom.EN1.18.ED, 'EN1WD' = anom.EN1.18.WD)
library(tidyverse)
anom.18 <- separate(data = anom.18, col = date, into  = c('Date', 'Time'), sep = ' ')


write.csv(anom.1, 'anom.1.Freeway.D.csv')
write.csv(anom.2, 'anom.2.Freeway.D.csv')
write.csv(anom.3, 'anom.3.Freeway.D.csv')
write.csv(anom.4, 'anom.4.Freeway.D.csv')
write.csv(anom.5, 'anom.5.Freeway.D.csv')
write.csv(anom.6, 'anom.6.Freeway.D.csv')
write.csv(anom.7, 'anom.7.Freeway.D.csv')
write.csv(anom.8, 'anom.8.Freeway.D.csv')
write.csv(anom.9, 'anom.9.Freeway.D.csv')
write.csv(anom.10, 'anom.10.Freeway.D.csv')
write.csv(anom.11, 'anom.11.Freeway.D.csv')
write.csv(anom.12, 'anom.12.Freeway.D.csv')
write.csv(anom.13, 'anom.13.Freeway.D.csv')
write.csv(anom.14, 'anom.14.Freeway.D.csv')
write.csv(anom.15, 'anom.15.Freeway.D.csv')
write.csv(anom.16, 'anom.16.Freeway.D.csv')
write.csv(anom.17, 'anom.17.Freeway.D.csv')
write.csv(anom.18, 'anom.18.Freeway.D.csv')

#library(dplyr)
anom.18$cat <- ifelse(anom.18$Time == c('00:00:00', '01:00:00', '02:00:00', '03:00:00', '04:00:00', '05:00:00'), 'cat1', 
                      ifelse(anom.18$Time == c('06:00:00', '07:00:00', '08:00:00', '09:00:00', '10:00:00', '11:00:00'), 'cat2', 
                             ifelse(anom.18$Time == c('12:00:00', '13:00:00', '14:00:00', '15:00:00', '16:00:00', '17:00:00'), 'cat3', 'cat4')))
test <- split(anom.18, anom.18$cat)
anom.test <- lapply(test, function(x) {
  colSums(x[,sapply(x, is.numeric)])})
test18 <- do.call(rbind, anom.test)



All.anom.HD <- bind_rows(as.data.frame(test1), as.data.frame(test2), as.data.frame(test3), as.data.frame(test4), as.data.frame(test5), as.data.frame(test6), 
                         as.data.frame(test7), as.data.frame(test8), 
                         as.data.frame(test9), as.data.frame(test10), as.data.frame(test11), as.data.frame(test12), as.data.frame(test13), 
                         as.data.frame(test14), as.data.frame(test15), as.data.frame(test16), as.data.frame(test17), as.data.frame(test18))
write.csv(All.anom.HD, 'All.anom.HD.csv')



#############

All.anom.HD.1 <- read.csv('All.anom.HD2.csv', header = TRUE)[,-1]

No.days <- c(9, 4, 4, 3, 3, 4, 7, 3, 4, 3, 4, 4, 3, 3, 7, 3, 4, 1)

All.anom.HD <- matrix(NA, ncol = ncol(All.anom.HD.1), nrow = nrow(All.anom.HD.1))

for(i in 1:nrow(All.anom.HD.1)){
  All.anom.HD[i,] <- as.numeric(All.anom.HD.1[i,])/No.days[i]
}

# for(i in 1:nrow(All.anom.HD.1)){
#   All.anom.HD[i,] <- (as.numeric(All.anom.HD.1[i,]) - mean(as.numeric(All.anom.HD.1[i,])))/sd(as.numeric(All.anom.HD.1[i,]))
# }

colnames(All.anom.HD) <- colnames(All.anom.HD.1)
All.anom.HD <- as.data.frame(All.anom.HD)
All.anom.HD$date <- c(1:18)
# hollabs <- c("2019-02-02~02-10", "02-28~03-03", "04-04~04-07", '06-07~06-09', '09-13~09-15', '10-10~10-13',
#              '2020-01-23~01-29', '02-28~03-01', '04-02~04-05', '05-01~05-03', '06-25~06-28', '10-01~10-04',
#              '10-09~10-11', '2021-01-01~01-03', '02-10~02-16', '02-27~03-01', '04-02~04-05', '04-30~04-30')

hollabs <- c("2019-1", "2", "3", '4', '5', '6',
             '2020-1', '2', '3', '4', '5', '6',
             '7', '2021-1', '2', '3', '4', '5')


p1 <- ggplot(All.anom.HD, aes(date)) + 
  geom_line(aes(y = N1ND.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = N1ND.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = N1ND.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = N1ND.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  ylab('Count')+xlab('') +
  labs(colour = "Time")  +
  ggtitle("No1. highway - North direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_blank(),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_text(size = 20))

p2 <- ggplot(All.anom.HD, aes(date)) + 
  geom_line(aes(y = N1SD.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = N1SD.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = N1SD.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = N1SD.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  ylab('')+xlab('') +
  labs(colour = "Time")  +
  ggtitle("No1. highway - South direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_blank(),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

p3 <- ggplot(All.anom.HD, aes(date)) + 
  geom_line(aes(y = EN1ND.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = EN1ND.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = EN1ND.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = EN1ND.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  ylab('')+xlab('') +
  labs(colour = "Time")  +
  ggtitle("Elevated No1. highway - North direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_blank(),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())


p4 <- ggplot(All.anom.HD, aes(date)) + 
  geom_line(aes(y = EN1SD.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = EN1SD.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = EN1SD.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = EN1SD.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  ylab('')+xlab('') +
  labs(colour = "Time")  +
  ggtitle("Elevated No1. highway - South direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_blank(),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

p5 <- ggplot(All.anom.HD, aes(date)) + 
  geom_line(aes(y = EN1ED.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = EN1ED.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = EN1ED.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = EN1ED.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  scale_x_continuous(breaks = 1:18, labels = hollabs) +
  ylab('Count')+ xlab('Holiday') +
  labs(colour = "Time")  +
  ggtitle("Elevated No1. highway - East direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_text(size = 20, angle = 45, hjust = 1, vjust = 0.5),
    #axis.text.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_text(size = 20))

p6 <- ggplot(All.anom.HD, aes(date)) + 
  geom_line(aes(y = EN1WD.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = EN1WD.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = EN1WD.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = EN1WD.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  scale_x_continuous(breaks = 1:18, labels = hollabs) +
  ylab('')+ xlab('Holiday') +
  labs(colour = "Time")  +
  ggtitle("Elevated No1. highway - West direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_text(size = 20, angle = 45, hjust = 1, vjust = 0.5),
    #axis.text.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

p7 <- ggplot(All.anom.HD, aes(date)) + 
  geom_line(aes(y = N3ND.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = N3ND.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = N3ND.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = N3ND.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6) +
  scale_x_continuous(breaks = 1:18, labels = hollabs) +
  ylab('')+ xlab('Holiday') +
  labs(colour = "Time")  +
  ggtitle("No3. highway - North direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_text(size = 20, angle = 45, hjust = 1, vjust = 0.5),
    #axis.text.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

p8 <- ggplot(All.anom.HD, aes(date)) + 
  geom_line(aes(y = N3SD.1, colour = "00:00-05:00"), size = 1) + 
  geom_line(aes(y = N3SD.2, colour = "06:00-11:00"), size = 1) +
  geom_line(aes(y = N3SD.3, colour = "12:00-17:00"), size = 1) + 
  geom_line(aes(y = N3SD.4, colour = "18:00-23:00"), size = 1) +
  ylim(0,6)+
  scale_x_continuous(breaks = 1:18, labels = hollabs) +
  ylab('')+ xlab('Holiday') +
  labs(colour = "Time")  +
  ggtitle("No3. highway - South direction") +
  theme_void() +
  theme(
    title = element_text(size = 20),
    legend.text = element_text(size = 20),
    axis.title.x = element_text(size = 20),
    axis.text.x = element_text(size = 20, angle = 45, hjust = 1, vjust = 0.5),
    #axis.text.x = element_text(size = 20),
    axis.title.y = element_text(size = 20),
    axis.text.y = element_blank())

library(ggpubr)
ggarrange(p1, p2, p3, p4, p5, p6, p7, p8, ncol=4, nrow=2, common.legend = TRUE, legend="top", heights = c(1, 1, 1, 1), widths = c(1,1,1,1))


# All.anom.HD %>%
#   gather(key,value, NRND.1, NRND.2, NRND.3, NRND.4) %>%
#   ggplot(aes(x=date, y=value, colour=key)) +
#   geom_line()


ggplot() + geom_line(aes(y = All.anom.HD$NRND.1),color='red') + 
  #geom_line(aes=All.anom.HD$NRND.2),color='blue') + 
  ylab('Values')+xlab('date')

plot(All.anom.HD$NRND.1, type = 'l')



#############Comparison
## ARIMA holiday.2
fc.arima.rec.2 <- read.csv('fc.arima.rec-2.csv', header = TRUE)
quan05.arima.2 <- read.csv('quan05.arima-2.csv', header = TRUE)
colnames(quan05.arima.2) <- colnames(fc.arima.rec.2)
quan95.arima.2 <- read.csv('quan95.arima-2.csv', header = TRUE)
colnames(quan95.arima.2) <- colnames(fc.arima.rec.2)
quan25.arima.2 <- read.csv('quan25.arima-2.csv', header = TRUE)
colnames(quan25.arima.2) <- colnames(fc.arima.rec.2)
quan975.arima.2 <- read.csv('quan975.arima-2.csv', header = TRUE)
colnames(quan975.arima.2) <- colnames(fc.arima.rec.2)

anom.arima.N1.2.ND = ifelse(quan975.arima.2$G9.2N > 0, ifelse(quan975.arima.2$G9.2N > holiday.2$G9.2N,0,1), 0)
anom.arima.N1.2.SD = ifelse(quan975.arima.2$G9.2S > 0, ifelse(quan975.arima.2$G9.2S > holiday.2$G9.2S,0,1), 0)
anom.arima.N3.2.ND = ifelse(quan975.arima.2$G9.3N > 0, ifelse(quan975.arima.2$G9.3N > holiday.2$G9.3N,0,1), 0)
anom.arima.N3.2.SD = ifelse(quan975.arima.2$G9.3S > 0, ifelse(quan975.arima.2$G9.3S > holiday.2$G9.3S,0,1), 0)
anom.arima.EN1.2.ND = ifelse(quan975.arima.2$G9.1N > 0, ifelse(quan975.arima.2$G9.1N > holiday.2$G9.1N,0,1), 0)
anom.arima.EN1.2.SD = ifelse(quan975.arima.2$G9.1S > 0, ifelse(quan975.arima.2$G9.1S > holiday.2$G9.1S,0,1), 0)
anom.arima.EN1.2.ED = ifelse(quan975.arima.2$G9.1E > 0, ifelse(quan975.arima.2$G9.1E > holiday.2$G9.1E,0,1), 0)
anom.arima.EN1.2.WD = ifelse(quan975.arima.2$G9.1W > 0, ifelse(quan975.arima.2$G9.1W > holiday.2$G9.1W,0,1), 0)



anom.arima.2 <- cbind.data.frame('date' = date.2, 'N1ND' = anom.arima.N1.2.ND, 'N1SD' = anom.arima.N1.2.SD, 'N3ND' = anom.arima.N3.2.ND, 'N3SD' = anom.arima.N3.2.SD,'EN1ND' = anom.arima.EN1.2.ND, 
                           'EN1SD' = anom.arima.EN1.2.SD, 'EN1ED' = anom.arima.EN1.2.ED, 'EN1WD' = anom.arima.EN1.2.WD)
library(tidyverse)
anom.arima.2 <- separate(data = anom.arima.2, col = date, into  = c('Date', 'Time'), sep = ' ')

## comparison arima by OLS
common_ones <- sum(anom.arima.2 == 1 & anom.2 == 1, na.rm = TRUE)
total_ones <- sum(anom.2 == 1, na.rm = TRUE)  # Total number of ones 

percentage_common_ones <- (common_ones / total_ones) * 100

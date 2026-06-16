library(readxl)
SPI <- read_excel("C:/Users/admin/OneDrive - Università degli Studi di Catania/Era5_land_hourly_2023_share/SPI.xlsx")
View(SPI)
#Getting climatic water balance and  precipitation for Catania station 
BAL_CT=SPI$CT_RF-SPI$CT_Eto
CT_RF=SPI$CT_RF
library(SPEI)
#CT_PRC=SPI$CT_RF

# Create a sequence of monthly dates from January 1951 to December 2023
dates <- seq(as.Date("1951-01-01"), as.Date("2023-12-31"), by = "month")
#calculating SPEI
CT_SPEI11 <- spei(BAL_CT, 1)
CT_SPEI3 <- spei(BAL_CT,  3)
CT_SPEI6 <- spei(BAL_CT, 6)
CT_SPEI9 <- spei(BAL_CT, 9)
CT_SPEI12 <- spei(BAL_CT, 12)
CT_SPEI24 <- spei(BAL_CT, 24)
#calculate the SPI
CT_SPI1=spi(CT_RF, 1)
CT_SPI3=spi(CT_RF, 3)
CT_SPI6=spi(CT_RF, 6)
CT_SPI9=spi(CT_RF, 9)
CT_SPI12=spi(CT_RF, 12)
CT_SPI24=spi(CT_RF, 24)


# Generate some example data (you can replace this with your own data)
# For demonstration purposes, let's generate random data

# Create a time series object for SPEI
ts_CT_SPEI11 <- ts(CT_SPEI11, start = c(1951, 1), frequency = 12)
ts_CT_SPEI3 <- ts(CT_SPEI3, start = c(1951, 1), frequency = 12)
ts_CT_SPEI6 <- ts(CT_SPEI6, start = c(1951, 1), frequency = 12)
ts_CT_SPEI9 <- ts(CT_SPEI9, start = c(1951, 1), frequency = 12)
ts_CT_SPEI12 <- ts(CT_SPEI12, start = c(1951, 1), frequency = 12)
ts_CT_SPEI24 <- ts(CT_SPEI24, start = c(1951, 1), frequency = 12)
#ts_CT_PRC <- ts(CT_PRC, start = c(1951, 1), frequency = 12)
# Create a time series object for SPI
ts_CT_SPI1 <- ts(CT_SPI1, start = c(1951, 1), frequency = 12)
ts_CT_SPI3 <- ts(CT_SPI3, start = c(1951, 1), frequency = 12)
ts_CT_SPI6 <- ts(CT_SPI6, start = c(1951, 1), frequency = 12)
ts_CT_SPI9 <- ts(CT_SPI9, start = c(1951, 1), frequency = 12)
ts_CT_SPI12 <- ts(CT_SPI12, start = c(1951, 1), frequency = 12)
ts_CT_SPI24 <- ts(CT_SPI24, start = c(1951, 1), frequency = 12)

# Plot the time series for SPEI
plot(ts_CT_SPEI11, main = "Catania SPEI 1", xlab = "Year", ylab = "SPEI 1")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPEI3, main = "Catania SPEI 3", xlab = "Year", ylab = "SPEI 3")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPEI6, main = "Catania SPEI 6", xlab = "Year", ylab = "SPEI 6")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPEI9, main = "Catania SPEI 9", xlab = "Year", ylab = "SPEI 9")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPEI12, main = "Catania SPEI 12", xlab = "Year", ylab = "SPEI 12")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPEI24, main = "Catania SPEI 24", xlab = "Year", ylab = "SPEI 24")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

# Plot the time series for SPI

plot(ts_CT_SPI1, main = "Catania SPI 1", xlab = "Year", ylab = "SPI 1")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPI3, main = "Catania SPI 3", xlab = "Year", ylab = "SPI 3")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPI6, main = "Catania SPI 6", xlab = "Year", ylab = "SPI 6")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPI9, main = "Catania SPI 9", xlab = "Year", ylab = "SPI 9")
axis(side = 1, at = seq(1950, 2025, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPI12, main = "Catania SPI 12", xlab = "Year", ylab = "SPI 12")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

plot(ts_CT_SPI24, main = "Catania SPI 24", xlab = "Year", ylab = "SPI 24")
axis(side = 1, at = seq(1950, 2024, by = 5))
abline(h = c(-1, -1.5, -2), col = c("greenyellow", "gold", "darkred"), lty = 2)

#minimum spei and spi
min_ct_SPEI_1= aggregate(ts_CT_SPEI11, FUN = min)
min_ct_SPEI_3= aggregate(ts_CT_SPEI3, FUN = min)
min_ct_SPEI_6= aggregate(ts_CT_SPEI6, FUN = min)
min_ct_SPEI_9= aggregate(ts_CT_SPEI9, FUN = min)
min_ct_SPEI_12= aggregate(ts_CT_SPEI12, FUN = min)
min_ct_SPEI_24= aggregate(ts_CT_SPEI24, FUN = min)
min_ct_SPI_1= aggregate(ts_CT_SPI1, FUN = min)
min_ct_SPI_3= aggregate(ts_CT_SPI3, FUN = min)
min_ct_SPI_6= aggregate(ts_CT_SPI6, FUN = min)
min_ct_SPI_9= aggregate(ts_CT_SPI9, FUN = min)
min_ct_SPI_12= aggregate(ts_CT_SPI12, FUN = min)
min_ct_SPI_24= aggregate(ts_CT_SPI24, FUN = min)
#export to excel
library(xlsx)
wb <- createWorkbook()
# Create a new sheet
sheet <- createSheet(wb, sheetName = "Minimum_Values")

# Write data to sheet
addDataFrame(min_ct_SPEI_1, sheet = sheet, startRow = 1, startColumn = 1)
addDataFrame(min_ct_SPEI_3, sheet = sheet, startRow = 1, startColumn = 3)
addDataFrame(min_ct_SPEI_6, sheet = sheet, startRow = 1, startColumn =5)
addDataFrame(min_ct_SPEI_9, sheet = sheet, startRow = 1, startColumn =7)
addDataFrame(min_ct_SPEI_12, sheet = sheet, startRow = 1, startColumn = 9)
addDataFrame(min_ct_SPEI_24, sheet = sheet, startRow = 1, startColumn = 11)
addDataFrame(min_ct_SPI_1, sheet = sheet, startRow = 1, startColumn = 13)
addDataFrame(min_ct_SPI_3, sheet = sheet, startRow = 1, startColumn = 15)
addDataFrame(min_ct_SPI_6, sheet = sheet, startRow = 1, startColumn = 17)
addDataFrame(min_ct_SPI_9, sheet = sheet, startRow = 1, startColumn = 19)
addDataFrame(min_ct_SPI_12, sheet = sheet, startRow = 1, startColumn = 21)
addDataFrame(min_ct_SPI_24, sheet = sheet, startRow = 1, startColumn = 23)

# Save the workbook
saveWorkbook(wb, "minimum_values.xlsx")
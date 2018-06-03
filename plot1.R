#  Exploratory Data Analysis project 1 plot 1

#Reads in data from file 
data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

# Set date format

data[,"Date"] <- as.Date(data[,"Date"],format = "%d/%m/%Y")

# Filter data

fdata<-subset(data,Date == "2007-02-01" | Date == "2007-02-02")

# Convert string to numeric format

GAP<-suppressWarnings(as.numeric(fdata[,"Global_active_power"]))

# Make and save plot

png("plot1.png",width = 480, height = 480)

hist(GAP, col = "red", main = "Global Active Power",
     
     xlab = "Global Active Power (kilowatts)", ylab = "Frequency")

dev.off()
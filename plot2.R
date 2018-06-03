#  Exploratory Data Analysis project 1 plot 2

#Reads in data from file 

data <- read.table("household_power_consumption.txt", sep = ";", header = TRUE, stringsAsFactors = FALSE)

# Set date format

data[,"Date"] <- as.Date(data[,"Date"],format = "%d/%m/%Y")

# Filter data

fdata<-subset(data,Date == "2007-02-01" | Date == "2007-02-02")

# Date-time format

datet<-strptime(paste(fdata$Date,fdata$Time,sep = " "), "%Y-%m-%d %H:%M:%S" )

# Convert string to numeric format

GAP<-as.numeric(fdata[,"Global_active_power"])

# Make and save plot

png("plot2.png",width = 480, height = 480)

plot(datet,GAP,type = "l",xlab = " ",ylab = "Global Active Power (kilowatts)")

dev.off()
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
emission_baltimore_vehicles <- subset(NEI,NEI$fips=="24510" & NEI$type == "ON-ROAD")
total_vehicle_emission <- tapply(emission_baltimore_vehicles$Emissions,emission_baltimore_vehicles$year, FUN =sum)
png("Plot5.png", res=150, width = 1400, height = 800)
plot(levels(factor(NEI$year)),total_vehicle_emission , type = "l", xlab ="Year",ylab ="Total Motor Vehicle Emission",main ="Total emissions from Motor Vehicle
     in the  Baltimore City, Maryland from 1999 to 2008")
dev.off()
NEI <- readRDS("summarySCC_PM25.rds")
emission_baltimore <- subset(NEI,NEI$fips=="24510")
total_emission <- tapply(emission_baltimore$Emissions,emission_baltimore$year, FUN =sum)
png("Plot2.png", res=150, width = 1200, height = 1000)
plot(levels(factor(NEI$year)),total_emission, type = "l", xlab ="Year",ylab ="Total Emission",main ="Total emissions from PM2.5 
     in the  Baltimore City, Maryland from 1999 to 2008")
dev.off()
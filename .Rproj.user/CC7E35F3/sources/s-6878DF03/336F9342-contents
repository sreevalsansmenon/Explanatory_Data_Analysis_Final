NEI <- readRDS("summarySCC_PM25.rds")
total_emission <- tapply(NEI$Emissions,NEI$year, FUN =sum)
png("Plot1.png", res=150, width = 1200, height = 1000)
plot(levels(factor(NEI$year)),total_emission, type = "l", xlab ="Year",ylab ="Total Emission",main ="Total emissions from PM2.5 
     in the United States from 1999 to 2008")
dev.off()
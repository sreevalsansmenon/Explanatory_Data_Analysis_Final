library(ggplot2)
NEI <- readRDS("summarySCC_PM25.rds")
SCC <- readRDS("Source_Classification_Code.rds")
coal_id <- as.character(SCC[grepl("Coal", SCC$Short.Name),]$SCC)
coal_emission <- NEI[NEI$SCC %in% coal_id,]
total_coal_emission <- aggregate(Emissions ~ year + type, coal_emission, sum)
png("Plot4.png", res=150, width = 1400, height = 800)
ggplot(data = total_coal_emission,aes(x=year,y=Emissions,col=type))+geom_line()+labs(xlab = "Year",ylab="Total Coal Emission",title="Total emissions from Coal in the  United States based on type from 1999 to 2008")+theme_bw()+theme(plot.title = element_text(hjust = 0.5))
dev.off()
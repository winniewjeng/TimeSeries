
library(ggplot2)
my_data <- AmusementParkAttendance

# graph 1 -- one graph with smooth trendline
ggplot(my_data,aes(Year, Attendance)) +
  geom_line() + 
  geom_point() + 
  geom_smooth()

# graph 2 -- with weighted and unweighted moving averages
ggplot(my_data, aes(x = Year)) + 
  geom_line(aes(y = Attendance), colour="grey", size=8) +
  geom_line(aes(y = Three.Year.Simple.Moving.Avg), colour="coral", size=1.5) + 
  geom_line(aes(y = Three.Year.Weighted.Moving.Avg), colour = "red", size=1.5) +
  ylab(label="Attendance") + 
  xlab("Year")

dev.off()

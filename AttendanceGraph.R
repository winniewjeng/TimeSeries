
library(ggplot2)
my_data <- AmusementParkAttendance
ggplot(my_data,aes(Year, Three.Year.Simple.Moving.Avg)) + geom_line() + geom_point()

ggplot(my_data, aes(x = Year)) + 
  geom_line(aes(y = Attendance), colour="grey", size=4) + 
  geom_line(aes(y = Three.Year.Simple.Moving.Avg), colour="orange") + 
  geom_line(aes(y = Three.Year.Weighted.Moving.Avg), colour = "red") + 
  ylab(label="Attendance") + 
  xlab("Year")


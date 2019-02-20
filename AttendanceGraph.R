
library(ggplot2)
my_data <- AmusementParkAttendance
ggplot(my_data,aes(Year, Three.Year.Simple.Moving.Avg)) + geom_line() + geom_point()

ggplot(my_data, aes(x = Year)) + 
  geom_line(aes(y = Attendance), colour="Yellow") + 
  geom_line(aes(y = Three.Year.Simple.Moving.Avg), colour="green") + 
  geom_line(aes(y = Three.Year.Weighted.Moving.Avg), colour = "blue") + 
  ylab(label="Attendance") + 
  xlab("Year")
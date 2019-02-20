
library(ggplot2)
toy.sales <- ToySalesNonlinearTrend

toy.df <- as.data.frame(toy.sales)

### Simple Time Series Plot
ggplot(toy.df, aes(Year, Sales)) + 
  geom_line(aes(y = Sales), colour="red", size=2) +
  geom_point()

# add a column: Log.Sales to calculate the logarithmic nonlinear trend line
toy.df$Log.Sales <- log10(toy.df$Sales)

# print(toy.df)

### Regression Analysis
# syntax: fit = lm (dependent.y ~ independent.x, data)
toy.lm = lm(Log.Sales ~ Code, data = toy.df)
a <- round(coef(toy.lm)[[1]],5)
b <- round(coef(toy.lm)[[2]],5)

# regression equation in log form
paste('y =', a, '+', b, '* x')

# find antilog (inverse)
rate_of_increase <- round(10^b-1,2)

# Conclusion
paste('annual rate of sales increase during this period: ', rate_of_increase * 100, "%")


### Forecast
# Estimate the import in year 2017. Code for year 2017 is 19
code <- 19
forecast <- round(10^(a+b*code),2)
paste('forecast of sales in 2017: $', forecast)
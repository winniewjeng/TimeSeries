
library(ggplot2)

food <- JensenFoodsSales

### Simple Time Series Plot
ggplot(food,aes(Time, Sales)) + geom_line() + geom_point()

### Regression Analysis
# syntax: fit = lm (dependent.y ~ independent.x, data)
food.lm = lm(Sales ~ Time, data = food); food.lm

coeffs = coefficients(food.lm); coeffs[1]; coeffs[2]
# Trend equation: y_hat = 6.1 + 1.3 * (year) | Sales increase at 1.3 million dollars per year.

# In 2015, what is the sales forecast?
future.year <- 7.0  # For Time, 2008 is base = 0, so 2015 = 7
sales = coeffs[1] + coeffs[2] * future.year; sales
# interpretation: on the basis of past sales, the estimate for 2015 is 15 million

### Sales Projection Practice:
# Some researchers suggest not to project sales, production, and other economic series more than n/2 times
# Others suggest the forecast to be no longer than 2 years in repidly changing economic times

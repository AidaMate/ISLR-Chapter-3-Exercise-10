Carseats = ISLR::Carseats
library(dplyr)


glimpse(Carseats)

lm_sales <- lm(Sales ~ Price + Urban + US, data = Carseats)
summary(lm_sales)

lm_sales2 <- lm(Sales ~ Price + US, data = Carseats)

summary(lm_sales2)



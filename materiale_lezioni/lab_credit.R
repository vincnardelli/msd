library(ggplot2)
library(ISLR2)

data("Credit")
summary(Credit)

ggplot() +
  geom_histogram(data=Credit, aes(x=Income))

ggplot() +
  geom_histogram(data=Credit, aes(x=Balance))

ggplot() +
  geom_point(data=Credit, aes(x=Income, y=Balance))

cov(Credit$Income, Credit$Balance)
cor(Credit$Income, Credit$Balance)


modello = lm(Balance ~ Income, data=Credit)
summary(modello)

coefficients(modello)


ggplot() +
  geom_point(data=Credit, aes(x=Income, y=Balance)) +
  geom_abline(intercept = coefficients(modello)[1], 
              slope = coefficients(modello)[2])


predict(modello, newdata=data.frame(Income=c(0, 20, 50, 80)))


modello = lm(Balance ~ Limit+Credit, data=Credit)
summary(modello)

modello = lm(Balance ~ Student, data=Credit)
summary(modello)

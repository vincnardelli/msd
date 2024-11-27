library(ISLR2)
library(ggplot2)
data("Boston")


summary(Boston$lstat)
summary(Boston$medv)

# Scatter plot con ggplot2
ggplot(Boston, aes(x = lstat, y = medv)) +
  geom_point()

# Covarianza
cov(Boston$lstat, Boston$medv)

# Correlazione
cor(Boston$lstat, Boston$medv)

lm_model <- lm(medv ~ lstat, data = Boston)
summary(lm_model)

coefficients(lm_model)

ggplot(Boston, aes(x = lstat, y = medv)) +
  geom_point() +
  geom_abline(intercept = coefficients(lm_model)[1], slope=coefficients(lm_model)[2])

# Previsioni per livelli di povertà del 5%, 10%, 15%
new_data <- data.frame(lstat = c(5, 10, 15))
predictions <- predict(lm_model, newdata = new_data)
predictions



summary(lm_model)



lm_model_multi <- lm(medv ~ lstat + rm + age + dis, data = Boston)
summary(lm_model_multi)

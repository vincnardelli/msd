library(ggplot2)
library(Ecdat)

data("Cigarette")

summary(Cigarette$avgprs)
summary(Cigarette$packpc)

cor(Cigarette$avgprs, Cigarette$packpc)


ggplot() +
  geom_histogram(data=Cigarette, aes(avgprs))

ggplot() +
  geom_histogram(data=Cigarette, aes(packpc))

ggplot() +
  geom_point(data=Cigarette, aes(avgprs, packpc))

ggplot() +
  geom_point(data=Cigarette, aes(taxs, packpc))

cor(Cigarette$packpc, Cigarette$taxs)


model = lm(packpc ~ taxs, data=Cigarette)
model



ggplot() +
  geom_point(data=Cigarette, aes(taxs, packpc)) +
  geom_abline(intercept = model$coefficients[1], 
              slope = model$coefficients[2], 
              color="red")

summary(model)
model$coefficients[1] + 50*model$coefficients[2]
model$coefficients[1] + 100*model$coefficients[2]



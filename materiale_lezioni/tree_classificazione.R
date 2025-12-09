# Caricamento dei pacchetti necessari
library(tree)
library(caret)
library(ISLR2)
data("Default")
# Modello 1: Regressione logistica
glm_model <- glm(default ~ balance+income, data = Default, family = binomial)
summary(glm_model)

# Predizioni e accuratezza per il modello di regressione logistica
glm_pred <- ifelse(predict(glm_model, type = "response") > 0.5, "Yes", "No")
confusionMatrix(as.factor(glm_pred), as.factor(Default$default), positive = "Yes")

# Modello 2: Albero di classificazione
tree_model <- tree(default ~ balance+income, data = Default)
tree_model
summary(tree_model)

# Predizioni e accuratezza per l'albero di classificazione
tree_pred <- predict(tree_model, type = "class")
confusionMatrix(tree_pred, as.factor(Default$default), positive = "Yes")

# Visualizzazione dell'albero
plot(tree_model)
text(tree_model)

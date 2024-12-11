# Caricamento dei pacchetti necessari
library(tree)
library(caret)
library(ISLR2)
library(randomForest)

# Caricamento del dataset College
data("College")

# Modello 1: Regressione logistica
glm_model <- glm(Private ~ Room.Board + Outstate + PhD, data = College, family = binomial)
summary(glm_model)

# Predizioni e accuratezza per il modello di regressione logistica
glm_pred <- ifelse(predict(glm_model, type = "response") > 0.5, "Yes", "No")
confusionMatrix(as.factor(glm_pred), as.factor(College$Private), positive = "Yes")

# Modello 2: Albero di classificazione
tree_model <- tree(Private ~ Room.Board + Outstate + PhD, data = College)
summary(tree_model)

# Predizioni e accuratezza per l'albero di classificazione
tree_pred <- predict(tree_model, type = "class")
confusionMatrix(tree_pred, as.factor(College$Private), positive = "Yes")

# Visualizzazione dell'albero
plot(tree_model)
text(tree_model)

# Modello 3: Random Forest
set.seed(123)  # Per riproducibilità
rf_model <- randomForest(Private ~ Room.Board + Outstate + PhD, data = College, importance = TRUE)

# Predizioni e accuratezza per la Random Forest
rf_pred <- predict(rf_model, type = "class")
confusionMatrix(rf_pred, College$Private)

# Importanza delle variabili nella Random Forest
importance(rf_model)
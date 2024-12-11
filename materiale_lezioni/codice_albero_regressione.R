# Caricare i pacchetti necessari
library(tree)
library(Ecdat)
# Caricare il dataset Cigarette
data("Cigarette")

# Costruire l'albero di regressione
reg_tree <- tree(packpc ~ cpi, data = Cigarette)
reg_tree

# Stampare il sommario dell'albero
summary(reg_tree)

# Visualizzare l'albero di regressione
plot(reg_tree)
text(reg_tree)

# Costruire l'albero di regressione
reg_tree <- tree(packpc ~ taxs, data = Cigarette)
reg_tree

# Stampare il sommario dell'albero
summary(reg_tree)

# Visualizzare l'albero di regressione
plot(reg_tree)
text(reg_tree)

# Specificare la formula: 'packs' (consumo di sigarette) come variabile target
formula <- packpc ~ taxs+income+pop


# Costruire l'albero di regressione
reg_tree <- tree(formula, data = Cigarette)

# Stampare il sommario dell'albero
summary(reg_tree)

# Visualizzare l'albero di regressione
plot(reg_tree)
text(reg_tree)


# Validazione incrociata per selezionare l'albero ottimale
cv_tree <- cv.tree(reg_tree)
plot(cv_tree$size, cv_tree$dev)

# Potatura dell'albero per ottimizzare la complessità
pruned_tree <- prune.tree(reg_tree, best =6)

# Visualizzare l'albero potato
plot(pruned_tree)
text(pruned_tree, pretty = 0)

# Modello lineare
lm_model <- lm(formula, data = Cigarette)
lm_preds <- predict(lm_model)
summary(lm_model)

# Calcolare l'MSE per entrambi i modelli
tree_mse <- mean((Cigarette$packpc - tree_preds)^2)
lm_mse <- mean((Cigarette$packpc - lm_preds)^2)

tree_mse
lm_mse

set.seed(123)  # Per riproducibilità
rf_model <- randomForest(formula, data = Cigarette, importance=T)

# Predizioni per la Random Forest
rf_pred <- predict(rf_model, type = "class")

rf_mse <- mean((Cigarette$packpc - rf_pred)^2)
importance(rf_model)

tree_mse
lm_mse
rf_mse

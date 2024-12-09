# Caricare i pacchetti necessari
library(tree)
library(Ecdat)

# Caricare il dataset Cigarette
data("Cigarette")

# Specificare la formula: 'packs' (consumo di sigarette) come variabile target
formula <- packpc ~ taxs


# Costruire l'albero di regressione
reg_tree <- tree(formula, data = Cigarette)

# Stampare il sommario dell'albero
summary(reg_tree)

# Visualizzare l'albero di regressione
plot(reg_tree)
text(reg_tree)


# Modello ad albero decisionale
tree_model <- tree(formula, data = Cigarette)
tree_preds <- predict(tree_model)
summary(tree_model)

# Modello lineare
lm_model <- lm(formula, data = Cigarette)
lm_preds <- predict(lm_model)
summary(lm_model)

# Calcolare l'MSE per entrambi i modelli
tree_mse <- mean((Cigarette$packpc - tree_preds)^2)
lm_mse <- mean((Cigarette$packpc - lm_preds)^2)

tree_mse
lm_mse


# Validazione incrociata per selezionare l'albero ottimale
cv_tree <- cv.tree(reg_tree)
plot(cv_tree$size, cv_tree$dev)

# Potatura dell'albero per ottimizzare la complessità
pruned_tree <- prune.tree(reg_tree, best =5)

# Visualizzare l'albero potato
plot(pruned_tree)
text(pruned_tree, pretty = 0)





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



# Modello lineare
lm_model <- lm(formula, data = Cigarette)
lm_preds <- predict(lm_model)
summary(lm_model)

tree_preds <- predict(reg_tree)

# Calcolare l'MSE per entrambi i modelli
tree_mse <- mean((Cigarette$packpc - tree_preds)^2)
lm_mse <- mean((Cigarette$packpc - lm_preds)^2)

tree_mse
lm_mse
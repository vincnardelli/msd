# Importa le librerie necessarie
library(dplyr)   # Libreria per la manipolazione dei dati
library(caret)   # Libreria per il machine learning, utilizzata qui per la matrice di confusione

# Carica il dataset da un file CSV
data <- read.csv("coupon.csv")

# Costruzione del modello di regressione logistica
# La variabile dipendente è Y, mentre le variabili indipendenti sono weather, coupon, destination, passenger, e direction_same
model <- glm(Y ~ weather + coupon + destination + passenger + direction_same, data = data, family = binomial)

# Mostra il riepilogo del modello
summary(model)

# Calcola e visualizza i coefficienti del modello in termini di odds ratio (esponenti dei coefficienti del modello)
round(exp(coefficients(model)), 4) - 1 

# Predizione delle probabilità (valori continui tra 0 e 1) direttamente dal modello
predicted_prob <- predict(model, newdata = data, type = "response")
predicted_prob

# Impostazione di una soglia di classificazione (threshold) iniziale a 0.5
threshold <- 0.5

# Conversione delle probabilità predette in classi binarie in base al threshold
predicted_class <- factor(ifelse(predicted_prob > threshold, 1, 0))

# Calcola e visualizza la matrice di confusione, con la classe positiva definita come "1"
confusionMatrix(predicted_class, factor(data$Y), positive = "1")

# Calcolo del costo totale per falsi positivi (FP) e falsi negativi (FN) con threshold = 0.5
# FP = 2835, costo per FP = 0.3 €
# FN = 1831, costo per FN = 4.5 €
2835 * 0.3 + 1831 * 4.5

# Modifica della soglia di classificazione a 0.2
threshold <- 0.2
predicted_class <- factor(ifelse(predicted_prob > threshold, 1, 0))
confusionMatrix(predicted_class, factor(data$Y), positive = "1")

# Calcolo del costo totale con threshold = 0.2
# FP = 5474, costo per FP = 0.3 €
# FN = 0, costo per FN = 4.5 €
5474 * 0.3 + 0 * 4.5

# Modifica della soglia di classificazione a 0.8
threshold <- 0.8
predicted_class <- factor(ifelse(predicted_prob > threshold, 1, 0))
confusionMatrix(predicted_class, factor(data$Y), positive = "1")

# Calcolo del costo totale con threshold = 0.8
# FP = 156, costo per FP = 0.3 €
# FN = 6679, costo per FN = 4.5 €
156 * 0.3 + 6679 * 4.5


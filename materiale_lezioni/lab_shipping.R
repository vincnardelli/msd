# Caricamento della libreria readxl per leggere file Excel
library(readxl)

# Importazione dei dati dal file "shipping.xlsx" e salvataggio nel dataframe 'shipping'
shipping <- read_excel("shipping.xlsx")

# Esplorazione dei dati: riepilogo statistico delle variabili nel dataframe 'shipping'
summary(shipping)

# Conversione della variabile 'product_importance' in un fattore (categorica)
shipping$product_importance <- factor(shipping$product_importance)

# Riepilogo statistico aggiornato per verificare il cambiamento di 'product_importance' in fattore
summary(shipping)

# Creazione di un modello di regressione logistica per prevedere 'reached_time' 
# (variabile dipendente) basandosi su 'cost_of_the_product' (variabile indipendente)
model = glm(reached_time ~ cost_of_the_product, data=shipping)

# Riepilogo del modello: output dettagliato dei parametri stimati, significatività e fitting
summary(model)

# Estrazione dei coefficienti stimati dal modello
coefficients(model)

# Calcolo degli odds ratio per ogni coefficiente stimato (esponenziali dei coefficienti)
exp(coefficients(model))

# Conversione degli odds ratio in variazione percentuale: (OR - 1) * 100
exp(coefficients(model)) - 1

# Creazione di nuovi dati per predire 'reached_time' in base a diversi valori di 'cost_of_the_product'
new_data <- data.frame(cost_of_the_product = c(15, 150, 200, 2000))

# Predizione della probabilità di 'reached_time' per i nuovi dati
predict(model, newdata = new_data, type = "response")

# Creazione di un nuovo modello di regressione logistica, escludendo alcune variabili
# La formula usa '-mode_of_shipment-gender-customer_rating' per rimuovere queste variabili
model = glm(reached_time ~ .-mode_of_shipment-gender-customer_rating, data=shipping)

# Riepilogo del nuovo modello: parametri, significatività e fitting
summary(model)

# Estrazione dei coefficienti stimati per il nuovo modello
coefficients(model)

# Calcolo degli odds ratio per il nuovo modello
exp(coefficients(model))

# Conversione degli odds ratio in variazioni percentuali per il nuovo modello
exp(coefficients(model)) - 1

# Arrotondamento delle variazioni percentuali a 5 decimali per una migliore leggibilità
round(exp(coefficients(model)) - 1, 5)
# Caricamento dei pacchetti necessari
library(ISLR2)  # Pacchetto contenente i dataset
library(caret)  # Per il calcolo delle matrici di confusione e altre analisi
library(ggplot2)  # Per la creazione di grafici

# Domanda 1: Dataset College
data("College")  # Carica il dataset College

# Esplorazione dei dati
head(College)  # Prime righe
str(College)  # Struttura

# Modello iniziale con tutte le variabili
glm_full <- glm(Private ~ Room.Board + Outstate + PhD, data = College, family = binomial)
summary(glm_full)

# Rimozione di variabili non significative (Room.Board p=0.804 > 0.05)
glm_final <- glm(Private ~ Outstate + PhD, data = College, family = binomial)
summary(glm_final)

# 1. Calcola gli odds
odds <- exp(coefficients(glm_final))
odds
# Interpretazione: 
# - Per ogni dollaro in più di Outstate, gli odds di essere privato aumentano di exp(0.0008603) ≈ 1.0009 volte
# - Per ogni punto percentuale in più di PhD, gli odds diminuiscono di exp(-0.1225) ≈ 0.885 volte

# 2. Bontà del modello: 
# - Devianza residua: 415.90 (rispetto a null deviance 910.75)
# - AIC: 421.9
# - Il modello riduce notevolmente la devianza (da 910.75 a 415.90), spiegando bene la variabilità

# 3. Metriche del modello finale
predicted_prob <- predict(glm_final, type = "response")
predicted_class <- factor(ifelse(predicted_prob > 0.5, "Yes", "No"))
confusionMatrix(predicted_class, College$Private, positive = "Yes")
# Risultati: Accuratezza = 0.8867, Sensibilità = 0.9257, Specificità = 0.7830

# 4. Analisi degli errori
# FP (Falsi Positivi) = 46: college pubblici classificati come privati
# FN (Falsi Negativi) = 42: college privati classificati come pubblici
# FP > FN (ma la differenza è piccola)
# Impatto: Classificare un college privato come pubblico (FN) potrebbe portare studenti a 
# sottostimare i costi; classificare un pubblico come privato (FP) potrebbe scoraggiare studenti
# per aspettative di costi più elevati del reale.

# Domanda 2: Dataset mtcars
data("mtcars")

# Selezione forward: Step 1 - Modelli con una sola variabile
model_wt <- lm(mpg ~ wt, data = mtcars)
summary(model_wt)
# RSE: 3.046

model_hp <- lm(mpg ~ hp, data = mtcars)
summary(model_hp)
# RSE: 3.863

model_disp <- lm(mpg ~ disp, data = mtcars)
summary(model_disp)
# RSE: 3.251

# wt ha RSE più basso (3.046), quindi si seleziona wt come prima variabile

# Step 2 - Aggiungi la seconda variabile al modello con wt
model_wt_hp <- lm(mpg ~ wt + hp, data = mtcars)
summary(model_wt_hp)
# RSE: 2.593

model_wt_disp <- lm(mpg ~ wt + disp, data = mtcars)
summary(model_wt_disp)
# RSE: 2.917

# wt + hp ha RSE più basso (2.593), quindi si aggiunge hp

# Step 3 - Verifica se aggiungere la terza variabile migliora il modello
model_wt_hp_disp <- lm(mpg ~ wt + hp + disp, data = mtcars)
summary(model_wt_hp_disp)
# RSE: 2.639 (peggiora rispetto a 2.593)
# disp NON è significativa (p-value = 0.928)

# Modello finale selezionato: mpg ~ wt + hp
model_final <- lm(mpg ~ wt + hp, data = mtcars)
summary(model_final)

# RISPOSTE DOMANDA 2:
# 1. Variabili significative selezionate: wt e hp
# 2. RSE minimo del modello finale: 2.593
# 3. R-quadro del modello finale: 0.8268 (R² aggiustato: 0.8148)
# 4. Interpretazione coefficienti:
#    - Intercetta = 37.23: mpg atteso quando wt e hp sono zero (non interpretabile praticamente)
#    - wt = -3.88: per ogni aumento di 1000 libbre di peso, mpg diminuisce di 3.88 (a parità di hp)
#    - hp = -0.032: per ogni cavallo in più, mpg diminuisce di 0.032 (a parità di wt)

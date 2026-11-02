---
number: 3
title: Metodi di regressione - Modello logistico
sezione: 2
idea: "Quando Y è sì o no il modello stima una probabilità; per decidere serve una soglia, e la soglia giusta dipende dal costo degli errori."
slides_pdf: slide/lezione_3.pdf
concepts_new: [classificazione, regressione logistica, massima verosimiglianza, log-odds, odds ratio, devianza, AIC, confusion matrix, accuracy, sensitività, specificità, soglia]
concepts_required: [regressione multipla, predittori qualitativi]
notebook:
  - file: logistica_default
    tipo: lezione
    titolo: Regressione logistica
    descr: Il dataset Default, passo per passo
  - file: lab_shipping
    tipo: lab
    titolo: LAB Puntualità delle consegne
    descr: Quali fattori portano ai ritardi
  - file: lab_bank
    tipo: lab
    titolo: LAB Marketing bancario
    descr: Chi sottoscrive un deposito a termine
  - file: lab_coupon
    tipo: lab
    titolo: LAB Accettazione dei coupon
    descr: Soglie e costo degli errori
dati:
  - file: default.csv
    descr: Default di 10.000 clienti di carte di credito
  - file: shipping.csv
    descr: 10.999 spedizioni di un e-commerce
  - file: bank.csv
    descr: Campagne di telemarketing bancario
  - file: coupon.csv
    descr: Coupon offerti agli automobilisti
---

- Modello di regressione logistica
- Interpretazione dei coefficienti e previsioni
- Confusion matrix, sensitività, specificità e scelta della soglia

---
number: 2
title: Metodi di regressione - Modello lineare
sezione: 2
idea: "Una retta che riassume come Y dipende da X: si stima con i minimi quadrati, si valuta con R² e test, si usa per prevedere."
slides_pdf: slide/lezione_2.pdf
concepts_new: [regressione lineare semplice, minimi quadrati, R², errore standard, intervalli di confidenza, test t, regressione multipla, selezione forward e backward, predittori qualitativi, MSE]
concepts_required: [covarianza, correlazione, pandas]
notebook:
  - file: lab_cigarette
    tipo: lab
    titolo: LAB Consumo di sigarette
    descr: Prezzo, tasse e consumo negli Stati Uniti
  - file: lab_real_estate
    tipo: lab
    titolo: LAB Real Estate
    descr: Povertà e valore delle case a Boston
  - file: lab_carseats
    tipo: lab
    titolo: LAB Vendite seggiolini auto
    descr: Selezione delle variabili e predittori qualitativi
  - file: lab_credit
    tipo: lab
    titolo: LAB Credit Analysis
    descr: Da cosa dipende il saldo della carta di credito
dati:
  - file: cigarette.csv
    descr: Consumo di sigarette per stato e anno
  - file: boston.csv
    descr: Valore delle case nei quartieri di Boston
  - file: carseats.csv
    descr: Vendite di seggiolini in 400 negozi
  - file: credit.csv
    descr: Saldo delle carte di credito di 400 clienti
---

- Modello di regressione lineare semplice e multipla
- Inferenza sui coefficienti e bontà del modello
- Selezione delle variabili e predittori qualitativi

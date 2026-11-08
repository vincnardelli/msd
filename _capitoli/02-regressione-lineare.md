---
number: 2
title: "Prevedere un numero: la regressione lineare"
sezione: 2
idea: "Quanto rendono mille dollari in più di pubblicità? La retta dei minimi quadrati, quanto fidarsi delle sue stime, e cosa vuol dire «a parità degli altri»."
slides_pdf: slide/lezione_2.pdf
concepts_new: [regressione lineare semplice, minimi quadrati, residui, R², errore standard dei residui, previsione ed estrapolazione, errore standard, intervallo di confidenza, test t e p-value, regressione multipla, a parità degli altri, statistica F, R² aggiustato, selezione delle variabili, variabili dummy, interazione]
concepts_required: [covarianza, correlazione, correlazione spuria, apprendimento supervisionato]
notebook:
  - file: regressione_advertising
    tipo: lezione
    titolo: Quanto rende la pubblicità?
    descr: Tutti i numeri e i grafici delle slide, riprodotti in Python
    dataset: advertising
  - file: lab_real_estate
    tipo: lab
    titolo: "LAB 1 · Real estate"
    descr: Povertà del quartiere e valore delle case (lunedì)
    dataset: boston
  - file: lab_carseats
    tipo: lab
    titolo: "LAB 2 · Seggiolini auto"
    descr: Prezzo, pubblicità e scaffali (martedì)
    dataset: carseats
  - file: lab_credit
    tipo: lab
    titolo: "LAB · Carte di credito"
    descr: Reddito, limite, studenti e collinearità
    dataset: credit
  - file: lab_cigarette
    tipo: lab
    titolo: "LAB · Tasse e sigarette"
    descr: Le tasse riducono il fumo?
    dataset: cigarette
dati:
  - file: advertising.csv
  - file: boston.csv
  - file: carseats.csv
  - file: credit.csv
  - file: cigarette.csv
dataset: [advertising, boston, carseats, credit, cigarette]
explorations: [regressione-retta, regressione-fiducia]
---

- Dalla domanda alla retta: le domande del direttore marketing sui dati Advertising, la retta dei minimi quadrati, leggere intercetta e pendenza come decisioni
- Quanto spiega il modello: R², correlazione ed errore tipico; prevedere, ed estrapolare
- Quanto fidarsi delle stime: campioni ripetuti, errore standard, intervalli di confidenza, test t e p-value, la tabella dei risultati
- Più variabili insieme: la regressione multipla, il paradosso dei giornali, la statistica F, l'R² aggiustato, la selezione delle variabili
- Variabili qualitative: dummy, categoria di riferimento, rette parallele
- Quando la retta non basta: la sinergia tra TV e radio, cinque controlli prima di decidere
- LAB 1 Real estate (lunedì), LAB 2 Seggiolini auto (martedì), più due lab per esercitarsi a casa

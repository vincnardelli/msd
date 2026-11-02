---
number: 4
title: Alberi decisionali e Random Forest
sezione: 3
idea: "Un albero divide i dati con domande sì/no: si legge facilmente ma sbaglia di più. Tanti alberi insieme, una random forest, sbagliano meno."
slides_pdf: slide/lezione_4.pdf
concepts_new: [alberi di regressione, alberi di classificazione, indice di Gini, potatura, bagging, errore out-of-bag, random forest, importanza delle variabili, scikit-learn]
concepts_required: [MSE, confusion matrix, regressione logistica]
notebook:
  - file: alberi_regressione
    tipo: lezione
    titolo: Alberi di regressione e random forest
    descr: Consumo di sigarette, albero contro modello lineare
  - file: alberi_classificazione
    tipo: lezione
    titolo: Alberi di classificazione e random forest
    descr: Default e College, albero contro logistica
  - file: lab_credit_alberi
    tipo: lab
    titolo: LAB Credit Analysis
    descr: Modello lineare, albero o random forest?
dati:
  - file: cigarette.csv
    descr: Consumo di sigarette per stato e anno
  - file: default.csv
    descr: Default di 10.000 clienti di carte di credito
  - file: college.csv
    descr: 777 college statunitensi
  - file: credit.csv
    descr: Saldo delle carte di credito di 400 clienti
---

- Alberi decisionali (regressione e classificazione)
- Bagging e random forest
- Confronto con i modelli lineari e logistici

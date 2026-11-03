---
title: Reddito e felicità
slug: happiness
file: happiness.csv
var: happy
righe: 111
idea: Per 111 paesi, il reddito mediano e quanto si dichiarano felici gli abitanti. I soldi fanno la felicità?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `country` | il paese |
| `median_income` | il reddito mediano annuo per persona, in dollari internazionali (a parità di potere d'acquisto): metà degli abitanti guadagna meno di questa cifra, metà di più |
| `happyScore` | il punteggio di felicità del paese: la media delle risposte alla domanda «su una scala da 0 (la vita peggiore possibile) a 10 (la migliore), dove collocheresti la tua vita oggi?» |

## Da dove viene

Il punteggio di felicità è quello del **World Happiness Report 2015** (ONU, Sustainable Development Solutions Network), che riassume le risposte del Gallup World Poll alla «scala di Cantril» da 0 a 10: in quell'anno la Svizzera era prima con 7,59 e il Togo ultimo con 2,84. Il reddito mediano viene dalle stime della **Banca Mondiale** sulla distribuzione del reddito nei singoli paesi.

Le due fonti sono state unite nel dataset Kaggle [Happiness and World Bank Income Inequality](https://www.kaggle.com/datasets/datascientist97/happiness-and-world-bank-income-inequality), che contiene anche reddito medio, indice di disuguaglianza e regione. Il file del corso ne tiene solo i 111 paesi per cui ci sono tutte e due le misure e le tre colonne che servono.

## Cosa ci si può chiedere

- Che forma ha la distribuzione del reddito mediano tra i paesi? E quella della felicità?
- Un paese «tipico» quanto guadagna: la media o la mediana raccontano la stessa cosa?
- Reddito e felicità si muovono insieme? Quanto? E la relazione è una retta, o si piega quando il reddito è alto?
- Se la correlazione è alta, vuol dire che i soldi *fanno* la felicità?

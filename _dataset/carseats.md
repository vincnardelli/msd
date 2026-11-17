---
title: Vendite di seggiolini auto
slug: carseats
file: carseats.csv
var: car
righe: 400
idea: 400 negozi di seggiolini auto, con vendite, prezzi, pubblicità e posizione sugli scaffali. Quanto vale lo scaffale buono?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `Sales` | vendite del negozio, in migliaia di unità |
| `Price` | il nostro prezzo, in dollari |
| `CompPrice` | il prezzo del concorrente nella stessa zona, in dollari |
| `Advertising` | budget pubblicitario locale, in migliaia di dollari |
| `Income` | reddito medio della zona, in migliaia di dollari |
| `Population` | popolazione della zona, in migliaia |
| `Age` | età media della zona |
| `Education` | anni di istruzione medi della zona |
| `ShelveLoc` | posizione sugli scaffali: `Bad`, `Medium` o `Good` |
| `Urban` | il negozio è in città: `Yes` o `No` |
| `US` | il negozio è negli Stati Uniti: `Yes` o `No` |

## Da dove viene

È il dataset `Carseats` di **An Introduction to Statistical Learning** (James, Witten, Hastie, Tibshirani), scaricabile dal sito del libro, [statlearning.com](https://www.statlearning.com). Sono **dati simulati**, costruiti per assomigliare a quelli di un vero produttore che vende in 400 negozi.

## Cosa ci si può chiedere

- Quanto si perde in vendite alzando il prezzo di un dollaro? E se il concorrente alza il suo?
- I negozi negli Stati Uniti vendono di più: è merito del paese o della pubblicità?
- Quanto vale uno scaffale buono rispetto a uno cattivo, a parità di prezzo?
- Quali variabili servono davvero, e quali si possono togliere?

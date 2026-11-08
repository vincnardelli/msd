---
title: Pubblicità e vendite
slug: advertising
file: advertising.csv
var: adv
righe: 200
idea: Per 200 mercati, quanto si è speso in pubblicità su TV, radio e giornali, e quanto si è venduto. Quanto rende ogni mezzo?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `TV` | budget pubblicitario in TV nel mercato, in migliaia di dollari |
| `radio` | budget pubblicitario in radio, in migliaia di dollari |
| `newspaper` | budget pubblicitario sui giornali, in migliaia di dollari |
| `sales` | vendite del prodotto nel mercato, in migliaia di unità |

## Da dove viene

È il dataset con cui si apre il capitolo sulla regressione lineare di **An Introduction to Statistical Learning** (James, Witten, Hastie, Tibshirani), scaricabile dal sito del libro, [statlearning.com](https://www.statlearning.com). Un'azienda vende lo stesso prodotto in 200 mercati diversi e in ognuno decide quanto spendere sui tre mezzi. Il file del corso è quello del libro senza la colonna con il numero di riga.

## Cosa ci si può chiedere

- C'è una relazione tra budget e vendite? Quanto è forte, mezzo per mezzo?
- Quante unità in più si associano a mille dollari in più di TV? Ne vale la pena?
- Da soli i giornali sembrano funzionare: e a parità di TV e radio?
- Spendere in TV e radio insieme rende più della somma delle parti?

---
title: Default sulla carta di credito
slug: default
file: default.csv
var: default
righe: 10000
idea: 10.000 clienti di una banca, con il saldo della carta, il reddito e se sono studenti. Chi non riuscirà a pagare?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `default` | **1** se il cliente non ha pagato il saldo della carta, **0** se ha pagato |
| `student` | il cliente è uno studente: `Yes` o `No` |
| `balance` | il saldo medio della carta di credito dopo il pagamento mensile, in dollari |
| `income` | il reddito annuo del cliente, in dollari |

## Da dove viene

È il dataset `Default` di **An Introduction to Statistical Learning** (James, Witten, Hastie, Tibshirani), scaricabile dal sito del libro, [statlearning.com](https://www.statlearning.com). Sono **dati simulati**: 10.000 clienti, di cui solo 333 (il 3,3%) vanno in default. Nel libro `default` è scritto `Yes`/`No`: nel file del corso è già **0/1**, così si mette direttamente nella formula della regressione logistica, `smf.logit("default ~ balance", data=clienti)`, senza trasformarla.

## Cosa ci si può chiedere

- Quanto aumenta il rischio di default con cento dollari in più di saldo?
- Gli studenti sono più rischiosi degli altri clienti? E a parità di saldo?
- Se la banca segnala i clienti a rischio, quanti default trova e quanti clienti buoni blocca per errore?

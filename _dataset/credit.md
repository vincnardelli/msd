---
title: Carte di credito
slug: credit
file: credit.csv
var: credit
righe: 400
idea: Per 400 clienti di una banca, il saldo della carta di credito e le loro caratteristiche. Da cosa dipende quanto debito si porta in carta?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `Balance` | saldo medio della carta di credito, in dollari |
| `Income` | reddito, in migliaia di dollari |
| `Limit` | limite di credito della carta |
| `Rating` | valutazione del merito di credito |
| `Cards` | numero di carte di credito |
| `Age`, `Education` | età e anni di istruzione |
| `Own`, `Student`, `Married` | proprietario di casa, studente, sposato (`Yes`/`No`) |
| `Region` | regione: `East`, `South`, `West` |

## Da dove viene

È il dataset *Credit* del pacchetto R *ISLR2*, usato nel libro *An Introduction to Statistical Learning* per introdurre le variabili qualitative nella regressione.

## Cosa ci si può chiedere

- Chi guadagna di più ha un saldo più alto? E a parità di limite della carta?
- Gli studenti hanno saldi diversi dagli altri clienti?
- Limite e rating dicono la stessa cosa? Cosa succede a metterli insieme nel modello?

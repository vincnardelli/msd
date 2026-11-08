---
title: Seggiolini auto
slug: carseats
file: carseats.csv
var: car
righe: 400
idea: Le vendite di seggiolini auto per bambini in 400 negozi, con prezzo, pubblicità e posizione sugli scaffali. Quali leve muovono le vendite?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `Sales` | vendite del negozio, in migliaia di unità |
| `Price` | prezzo praticato dall'azienda nel negozio |
| `CompPrice` | prezzo del concorrente nello stesso negozio |
| `Advertising` | budget pubblicitario locale, in migliaia di dollari |
| `Income` | reddito della zona, in migliaia di dollari |
| `Population` | popolazione della zona, in migliaia |
| `Age`, `Education` | età media e anni medi di istruzione della popolazione |
| `ShelveLoc` | qualità della posizione sugli scaffali: `Bad`, `Medium`, `Good` |
| `Urban`, `US` | negozio in zona urbana, negozio negli Stati Uniti (`Yes`/`No`) |

## Da dove viene

È un dataset **simulato** del pacchetto R *ISLR2*, usato nel libro *An Introduction to Statistical Learning*: i numeri sono costruiti per somigliare a quelli di un'azienda vera, ma non descrivono negozi reali.

## Cosa ci si può chiedere

- Quanto si vende di meno alzando il prezzo di un dollaro, a parità del prezzo del concorrente?
- Quanto vale uno scaffale buono rispetto a uno cattivo?
- Quali caratteristiche della zona contano, e quali no?

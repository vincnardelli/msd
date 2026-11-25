---
title: Prezzi di nove titoli del FTSE MIB
slug: ftsemib
file: ftsemib.csv
var: prezzi
righe: 120
idea: Dieci anni di prezzi mensili di nove titoli della Borsa di Milano e dell'indice. Quanto rendono, quanto rischiano, e conviene metterli insieme?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `data` | il mese, da novembre 2016 a ottobre 2026 (il primo giorno del mese) |
| `TERNA`, `ENEL` | il prezzo di chiusura di fine mese, in euro: reti ed energia elettrica |
| `ENI` | petrolio e gas |
| `INTESA`, `UNICREDIT` | banche |
| `GENERALI` | assicurazioni |
| `FERRARI`, `STELLANTIS` | auto |
| `LEONARDO` | difesa |
| `FTSEMIB` | l'indice FTSE MIB, in punti |

## Da dove viene

Sono **dati reali**, scaricati da Yahoo Finance con il pacchetto `yfinance`. I prezzi dei titoli sono **rettificati**: tengono conto di dividendi e frazionamenti, quindi la variazione del prezzo è il rendimento effettivo di chi possedeva il titolo. L'indice invece è un indice di prezzo e non include i dividendi. Si leggono con `try_parse_dates=True`, così la colonna `data` diventa una data.

## Cosa ci si può chiedere

- Quanto rende in media ogni titolo, e quanto oscilla?
- Due banche si muovono insieme? E un titolo del petrolio con uno dell'auto?
- Mettendo insieme due titoli il rischio scende? Di quanto, e da cosa dipende?
- Quanto si muove un titolo quando si muove il mercato?

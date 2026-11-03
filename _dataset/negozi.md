---
title: Vendite giornaliere di due negozi
slug: negozi
file: negozi.csv
var: negozi
righe: 250
idea: Un anno di vendite di due negozi con la stessa media. Servono le stesse scorte e la stessa cassa?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `giorno` | il giorno di apertura, da 1 a 250 |
| `roma` | le vendite del negozio di Roma in quel giorno, in euro |
| `milano` | le vendite del negozio di Milano in quel giorno, in euro |

## Da dove viene

Sono **dati costruiti per il corso**, con un seme fisso. I due negozi hanno esattamente le stesse vendite medie, 1.000 € al giorno, ma Roma oscilla poco intorno alla media e Milano moltissimo: è un dataset fatto apposta per vedere a cosa serve la **deviazione standard** quando la media non distingue.

## Cosa ci si può chiedere

- Con la stessa media, i due negozi sono «uguali»?
- Quanti giorni l'anno ciascun negozio scende sotto una soglia (per esempio 800 €)?
- Quale negozio ha bisogno di più scorte nei giorni buoni e di più cassa in quelli cattivi?

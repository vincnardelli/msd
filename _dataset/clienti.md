---
title: Clienti di un negozio online
slug: clienti
file: clienti.csv
var: clienti
righe: 200
idea: Duecento clienti con la spesa dell'anno, gli ordini e il canale. Quanto vale il «cliente medio»?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `cliente` | il codice del cliente, da C001 a C200 |
| `canale` | con che cosa compra di solito: `Sito`, `App` o `Negozio` |
| `spesa_annua` | quanto ha speso nell'anno, in euro |
| `ordini` | quanti ordini ha fatto nell'anno |
| `eta` | l'età, in anni |

## Da dove viene

Sono **dati costruiti per il corso**, generati con un programma e un seme fisso, così da avere una spesa annua **asimmetrica**: molti clienti piccoli, pochi molto grandi, come succede quasi sempre nelle vendite. I tre canali hanno distribuzioni un po' diverse (chi compra in negozio spende di più, chi usa l'app di meno). Il numero di ordini cresce con la spesa; l'età non c'entra quasi nulla.

## Cosa ci si può chiedere

- Quanto spende il «cliente medio»? E quanti clienti spendono davvero quella cifra?
- Se arriva un cliente molto grande, quale misura si sposta: la media o la mediana?
- I canali sono diversi tra loro, o è solo la media a dirlo?
- Chi fa più ordini spende di più: ma una promozione sugli ordini farebbe spendere di più?

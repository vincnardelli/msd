---
title: Tasse e sigarette
slug: cigarette
file: cigarette.csv
var: cig
righe: 528
idea: Per 48 stati americani dal 1985 al 1995, il consumo di sigarette, il prezzo e le tasse. Le tasse riducono il fumo?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `state`, `year` | stato e anno |
| `packpc` | pacchetti di sigarette venduti per persona nell'anno |
| `avgprs` | prezzo medio di un pacchetto, tasse incluse, in centesimi di dollaro |
| `taxs` | tasse medie per pacchetto, comprese quelle sulle vendite, in centesimi |
| `tax` | accise medie per pacchetto, in centesimi |
| `income` | reddito personale totale dello stato |
| `pop` | popolazione |
| `cpi` | indice dei prezzi al consumo |

## Da dove viene

È il dataset *Cigarette* del pacchetto R *Ecdat*, dai dati usati da Stock e Watson nel manuale *Introduction to Econometrics*: 48 stati continentali degli Stati Uniti, un'osservazione per stato e anno.

## Cosa ci si può chiedere

- Dove le sigarette costano di più se ne fumano meno?
- Quanto cala il consumo per ogni centesimo di tassa in più?
- È l'effetto delle tasse, o gli stati con tasse alte sono diversi anche per altro?

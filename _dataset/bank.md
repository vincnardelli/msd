---
title: Marketing telefonico di una banca
slug: bank
file: bank.csv
var: bank
righe: 4521
idea: 4.521 clienti di una banca portoghese, chiamati al telefono per proporre un deposito a termine. Chi lo sottoscriverà?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `y` | **1** se il cliente ha sottoscritto il deposito a termine, **0** se no |
| `duration` | quanto è durata l'ultima telefonata della banca al cliente, in secondi |
| `housing` | il cliente ha un mutuo sulla casa: `yes` o `no` |
| `loan` | il cliente ha un prestito personale: `yes` o `no` |
| `age` | l'età del cliente, in anni |
| `balance` | il saldo medio annuo del conto, in euro |
| `job`, `marital`, `education` | il lavoro, lo stato civile e il titolo di studio |
| `default` | il cliente ha un credito in default: `yes` o `no` |
| `contact`, `day`, `month` | come è stato contattato (`cellular`, `telephone`, `unknown`) e il giorno e il mese dell'ultima telefonata |
| `campaign` | quante telefonate ha ricevuto in questa campagna |
| `pdays`, `previous`, `poutcome` | i giorni dall'ultima telefonata di una campagna precedente (`-1` se mai contattato), quante telefonate prima di questa campagna, e com'era andata la campagna precedente |

## Da dove viene

È il dataset **Bank Marketing** dell'archivio UCI (Moro, Cortez e Rita, 2014): le campagne di marketing telefonico di una banca portoghese. Questo file è il campione di 4.521 clienti; solo 521 (l'11,5%) hanno sottoscritto il deposito. Nell'originale `y` è scritta `yes`/`no`: nel file del corso è già **0/1**, così si mette direttamente nella formula della regressione logistica, `smf.logit("y ~ duration", data=bank)`. È il LAB Bank della lezione 3.

## Cosa ci si può chiedere

- Chi ha una telefonata più lunga sottoscrive più spesso? Di quanto cambiano gli odds con un minuto in più?
- Chi ha un mutuo o un prestito sottoscrive di più o di meno, a parità di durata della telefonata?
- Se la banca richiama solo i clienti con probabilità alta, quanti sottoscrittori trova e quanti ne perde?

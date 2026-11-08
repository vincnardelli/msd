---
title: Case a Boston
slug: boston
file: boston.csv
var: boston
righe: 506
idea: Per 506 quartieri di Boston, il valore delle case e le caratteristiche della zona. Quanto pesa la povertà del quartiere sul prezzo?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `medv` | valore mediano delle case occupate dai proprietari, in migliaia di dollari |
| `lstat` | percentuale di popolazione a basso reddito |
| `rm` | numero medio di stanze per abitazione |
| `age` | percentuale di case costruite prima del 1940 |
| `dis` | distanza media dai cinque principali centri di lavoro di Boston |
| `crim` | tasso di criminalità pro capite |
| `zn`, `indus`, `chas`, `nox`, `rad`, `tax`, `ptratio` | zone residenziali, aree industriali, vicinanza al fiume Charles, inquinamento, accesso alle autostrade, tasse sugli immobili, alunni per insegnante |

## Da dove viene

Sono i dati del censimento statunitense del 1970, raccolti da Harrison e Rubinfeld (1978) per studiare quanto le famiglie fossero disposte a pagare per un'aria più pulita. Il file del corso è la versione del pacchetto R *ISLR2*. I valori di `medv` sono troncati a 50: le case più care risultano tutte da 50.000 dollari.

## Cosa ci si può chiedere

- Come si distribuiscono valore delle case e povertà tra i quartieri?
- Quanto vale in meno una casa per ogni punto di povertà in più nel quartiere?
- La relazione è una retta, o si piega?
- Cosa cambia aggiungendo il numero di stanze?

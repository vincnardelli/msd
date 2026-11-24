---
title: Consegne di un e-commerce
slug: shipping
file: shipping.csv
var: spedizioni
righe: 10999
idea: 10.999 spedizioni di un negozio online, con modalità di trasporto, prezzo, sconto e peso. Quali arrivano in ritardo?
---

## Cosa contiene

| colonna | cosa misura |
|---|---|
| `reached_time` | **1** se la spedizione è arrivata in ritardo, **0** se puntuale |
| `mode_of_shipment` | come viaggia: `Flight`, `Ship` o `Road` |
| `customer_rating` | il voto del cliente, da 1 (peggiore) a 5 (migliore) |
| `cost_of_the_product` | il prezzo del prodotto, in dollari |
| `prior_purchases` | quanti acquisti aveva già fatto il cliente |
| `product_importance` | l'importanza del prodotto: `low`, `medium` o `high` |
| `gender` | il genere del cliente: `F` o `M` |
| `discount_offered` | lo sconto applicato, in punti percentuali |
| `weight_in_gms` | il peso del pacco, in grammi |

## Da dove viene

È il dataset pubblico *E-Commerce Shipping Data* di Kaggle, con le colonne rinominate e senza alcune colonne dell'originale (il codice della spedizione, il magazzino, le chiamate al servizio clienti). La variabile da spiegare, `reached_time`, è già **0/1** nel file: si usa direttamente nella formula della regressione logistica, `smf.logit("reached_time ~ discount_offered", data=spedizioni)`. Il 59,7% delle spedizioni arriva in ritardo.

## Cosa ci si può chiedere

- Le spedizioni con uno sconto più alto arrivano più spesso in ritardo? Di quanto cambiano gli odds?
- Contano di più il peso del pacco, l'importanza del prodotto o il mezzo di trasporto?
- Se l'azienda avvisa i clienti delle spedizioni a rischio, quanti ritardi prevede e quanti falsi allarmi manda?

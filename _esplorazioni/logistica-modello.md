---
title: Dal modello alla probabilità
slug: logistica-modello
capitolo: 3
ordine: 2
question: Come si passa da β₀ e β₁ alla probabilità di default di un cliente? E perché cento dollari in più di saldo aumentano le odds del 73% per tutti, ma la probabilità no?
ready: true
altezza: 620
dataset: [default]
---

In **Esplora** scegli β₀, β₁ e il saldo del cliente e segui la catena **modello → log-odds → odds → probabilità**, con i conti in ogni passaggio. Muovendo β₁ la curva diventa più ripida o più piatta, muovendo β₀ scivola a destra o a sinistra; «Valori del modello» riporta ai coefficienti stimati. Con **Confronta +100 $** compare un secondo cliente: le log-odds salgono sempre dello stesso numero e le odds si moltiplicano sempre per lo stesso numero (l'odds ratio), mentre i punti di probabilità dipendono dal saldo di partenza.

In **Domande di business** due domande passo per passo: quanto rischia un cliente con 1.000 e con 2.000 $, e se il +73% delle slide vale per tutti.

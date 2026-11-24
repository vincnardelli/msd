---
title: Dal modello alla probabilità
slug: logistica-scale
capitolo: 3
ordine: 2
question: Come si passa da β₀ e β₁ alla probabilità di default di un cliente? E perché cento dollari in più di saldo aumentano le odds del 73% per tutti, ma la probabilità no?
ready: true
altezza: 1100
dataset: [default]
---

In **Esplora**, nella prima parte, parti dal modello: scegli β₀, β₁ e il saldo del cliente e segui la catena **modello → log-odds → odds → probabilità**, con i conti in ogni passaggio. Muovendo β₁ la curva diventa più ripida o più piatta, muovendo β₀ scivola a destra o a sinistra; «Valori del modello» riporta ai coefficienti stimati. Scegli «+100 $» per confrontare due saldi: sulle log-odds e sulle odds il cambiamento è sempre lo stesso (l'odds ratio), sulla probabilità dipende dal saldo di partenza. Nella seconda parte le tre scale a confronto: le odds si leggono «1 a 4», le log-odds sono simmetriche attorno a 0.

In **Domande di business** tre domande passo per passo: quanto rischia un cliente con 1.000 e con 2.000 $, se il +73% delle slide vale per tutti, e se odds doppie vogliono dire probabilità doppia.

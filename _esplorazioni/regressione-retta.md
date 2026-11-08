---
title: Trova la retta
slug: regressione-retta
capitolo: 2
question: Tra tutte le rette che passano tra i punti, quale scegliamo? E quanto spiega del perché un mercato vende più di un altro?
ready: true
altezza: 640
dataset: [advertising]
---

In **Esplora** ogni punto è uno dei 200 mercati di `advertising.csv`. La retta arancione è la tua: trascina i due cerchi e guarda cosa succede ai residui (le linee rosse), ai loro quadrati e all'RSS. La tacca blu sulla barra è il minimo possibile: prova ad arrivarci, poi premi «Mostra la migliore». Cambia mezzo (TV, radio, giornali) per confrontare quanto spiegano, e attiva «Prevedi» per vedere cosa succede fuori dai dati.

In **Domande di business** tre domande passo per passo: quale retta scegliere, quanto rendono mille dollari in TV, quale mezzo spiega di più.

**Cosa guardare.** I minimi quadrati puniscono gli errori grandi molto più di quelli piccoli: è per questo che si usano i quadrati. L'R² confronta la tua retta con la più semplice di tutte, quella piatta sulla media. E la retta si può prolungare quanto si vuole, ma i dati no.

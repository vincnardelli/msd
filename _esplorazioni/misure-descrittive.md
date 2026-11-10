---
title: Le misure che riassumono i dati
slug: misure-descrittive
capitolo: 1
ordine: 1
question: Cosa mostra, e cosa nasconde, ogni grafico degli stessi dati? E quando la media non basta per decidere?
ready: true
altezza: 1100
dataset: [clienti, negozi]
---

In **Esplora** ogni punto è un cliente di `clienti.csv` (o un giorno di vendite di `negozi.csv`), colorato per canale, e resta lo stesso in tutti i grafici: cambia solo dove viene messo, l'asse verticale non cambia mai. Passa da un grafico all'altro con i pulsanti o con le frecce della tastiera, clicca un punto per seguirlo, e clicca le intestazioni della tabella (minimo, quartili, mediana, massimo, media, deviazione standard) per disegnarle sul grafico. La casella in alto aggiunge un cliente da 2.000 €: guarda quale misura si sposta.

In **Domande di business** tre domande da risolvere passo per passo: quanto vale il «cliente medio», quante scorte tenere in due negozi con le stesse vendite medie, e se più ordini vogliono dire più spesa.

**Cosa guardare.** Ogni grafico risponde a una domanda e ne nasconde un'altra: il grafico cliente per cliente dice *quale*, la fila dove stanno mediana e quartili, l'istogramma *quanti*, il boxplot riassume in cinque numeri, la colonna delle medie in uno solo. La media è l'unica misura che un solo cliente può trascinare; due negozi con la stessa media possono chiedere decisioni opposte; e una correlazione dice che due cose si muovono insieme, non quale muove l'altra.

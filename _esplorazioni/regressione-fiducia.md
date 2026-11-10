---
title: Quanto fidarsi della retta
slug: regressione-fiducia
capitolo: 2
ordine: 3
question: Con altri dati la retta sarebbe la stessa? E cosa vuol dire «a parità degli altri»?
ready: true
altezza: 680
dataset: [advertising]
---

In **Altri campioni** il «mondo vero» è la retta blu. Ogni volta che premi «Nuovo campione» estraiamo dei mercati a caso e ristimiamo la retta: l'istogramma raccoglie le pendenze, e in basso compaiono gli intervalli di confidenza, verdi se contengono il valore vero, rossi se lo mancano. Cambia il numero di mercati per campione e guarda quanto si allarga l'istogramma.

In **A parità degli altri** il paradosso dei giornali: da soli sembrano far vendere, ma separando i mercati per budget radio la loro retta diventa piatta.

In **Domande di business**: quanto è sicuro il +47,5, cosa cambia con soli 20 mercati, e se conviene tagliare i giornali.

**Cosa guardare.** L'errore standard non è un'opinione: è quanto la stima ballerebbe con altri dati, e la formula di Python lo indovina da un solo campione. Un intervallo al 95% sbaglia una volta su venti. E un coefficiente in una regressione multipla risponde sempre a una domanda precisa: cosa succede cambiando questa variabile e tenendo ferme le altre.

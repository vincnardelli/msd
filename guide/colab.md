---
layout: page
title: Google Colab
permalink: /guide/colab
parent: Guide
nav_order: 1
---

# 🐍 Google Colab in cinque minuti

**Google Colab** è un notebook Python nel browser: nessuna installazione, basta un account Google. È il modo più semplice per seguire il corso, e ha già tutte le librerie che usiamo (pandas, matplotlib, statsmodels, scikit-learn).

## Aprire un notebook del corso

1. Nella pagina del capitolo, accanto al notebook, clicca **Apri in Colab**.
2. Se Colab lo chiede, accedi con l'account Google.
3. Per lavorare sulla tua copia: **File → Salva una copia in Drive**. La copia finisce nella cartella *Colab Notebooks* del tuo Google Drive; senza questo passaggio le modifiche non vengono salvate.

## Usare il notebook

- Un notebook è fatto di **celle**: di testo (le spiegazioni) e di codice.
- Per eseguire una cella di codice: clicca dentro e premi **Shift + Invio**. L'output compare sotto la cella.
- Le celle si eseguono **in ordine**, dall'alto: la prima cella importa le librerie e definisce `DATI`, l'indirizzo da cui si leggono i dataset. Se salti una cella, quelle dopo danno errore (`NameError`).
- Dopo un po' di inattività Colab riavvia il *runtime* e dimentica le variabili: rifai **Runtime → Esegui tutto**.

## Caricare un tuo file

I dati del corso si leggono dal sito e non serve caricarli. Per un tuo file: icona della cartella a sinistra → **Carica**, poi `pd.read_csv("nome_file.csv")`. I file caricati così spariscono quando il runtime si riavvia.

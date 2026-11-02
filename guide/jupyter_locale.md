---
layout: page
title: Jupyter sul proprio computer
permalink: /guide/jupyter
parent: Guide
nav_order: 2
---

# 💻 Jupyter sul proprio computer
{:.no_toc}

Se preferisci lavorare senza Google, o offline, puoi aprire gli stessi notebook con **Jupyter** sul tuo computer. Il modo più semplice è installare **Anaconda**, che contiene Python, Jupyter e tutte le librerie del corso.

1. TOC
{:toc}

## Con Anaconda (consigliato)

1. Scarica Anaconda da [anaconda.com/download](https://www.anaconda.com/download) (versione per Windows o macOS) e installala con le opzioni predefinite.
2. Apri **Anaconda Navigator** e avvia **JupyterLab**: si apre una scheda nel browser.
3. Scarica il notebook dalla pagina del capitolo (**Scarica ↓**), poi aprilo da JupyterLab navigando fino alla cartella in cui l'hai salvato (di solito *Download*).
4. Esegui le celle con **Shift + Invio**, come in Colab.

## Con VS Code

Se usi già **Visual Studio Code**: installa Python da [python.org](https://www.python.org/downloads/) e l'estensione *Jupyter* di VS Code, poi apri il file `.ipynb`. VS Code chiede quale Python usare (*kernel*): scegli quello appena installato. Le librerie si installano dal terminale con

```
pip install pandas matplotlib statsmodels scikit-learn openpyxl jupyter
```

## Lavorare offline

I notebook leggono i dati dal sito (`DATI = "https://www.vincnardelli.com/msd/dati/"`), quindi serve la connessione. Per lavorare offline scarica i file CSV dalla pagina del capitolo, mettili nella stessa cartella del notebook e cambia la prima cella in `DATI = ""`.

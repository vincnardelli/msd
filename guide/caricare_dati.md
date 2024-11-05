---
layout: page
title: Caricare i Dati in RStudio
permalink: /guide/caricare_dati
parent: Guide
nav_order: 4
---

# Caricare i Dati in RStudio
{:.no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Introduzione

In questa guida, vedremo come caricare dati in RStudio in tre diversi modi: utilizzando i dati già presenti in R, caricando dati da pacchetti specifici e importando dati da file esterni (come file `.csv` o `.xlsx`).

---

## 1. Dati Già Presenti in R

R include diversi dataset integrati che possono essere utilizzati immediatamente. Ad esempio, il dataset `mtcars` è un dataset integrato con informazioni sulle caratteristiche di diverse automobili.

### Esempio di Utilizzo

Per caricare e visualizzare un dataset già presente in R, basta usare il suo nome:

```r
# Caricamento e visualizzazione del dataset mtcars
data(mtcars)
head(mtcars)
```

Questo codice carica il dataset `mtcars` e ne mostra le prime righe.

---

## 2. Dati da Pacchetti (es. `Ecdat`)

Alcuni pacchetti contengono dataset utili per esercitazioni e analisi specifiche. Dopo aver installato e caricato un pacchetto, i dataset inclusi possono essere caricati facilmente.

### Esempio con il pacchetto `Ecdat`

Il pacchetto `Ecdat` include diversi dataset economici e finanziari utili per analisi statistiche.

1. Installa e carica il pacchetto:

```r
install.packages("Ecdat")
library(Ecdat)
```

2. Ora puoi caricare uno dei dataset disponibili nel pacchetto, come ad esempio `IncomeInequality`:

```r
# Caricamento del dataset IncomeInequality da Ecdat
data(IncomeInequality)
head(IncomeInequality)
```

Questo codice carica il dataset `IncomeInequality`, che contiene informazioni su distribuzione del reddito e disuguaglianza, e ne mostra le prime righe.

---

## 3. Dati da File Esterni

Spesso, i dati vengono salvati in file esterni, come file `.csv` o `.xlsx`. Vediamo come caricare questi file in RStudio, sia tramite l'interfaccia grafica sia tramite codice.

### Formato CSV

Un file **CSV** (Comma-Separated Values) è un file di testo in cui i valori sono separati da virgole o punti e virgola. Ogni riga rappresenta un record, mentre ogni colonna rappresenta un campo di quel record. È un formato semplice e universale per scambiare dati.

#### Consigli per Gestire File CSV

- **Scarica i file senza modificarne il nome**, così come sono, per evitare problemi di compatibilità.
- Evita di aprire i file CSV con applicazioni come Excel prima di importarli in R. Aprire il file in altre app potrebbe modificarne il formato o i caratteri. Trasferisci invece i file CSV nella cartella del progetto e caricali direttamente.
- Se hai difficoltà a scaricare il file CSV, prova a fare clic con il **tasto destro del mouse** sul link e scegli l'opzione **"Salva file con nome..."** per salvare il file correttamente.

#### Metodo 1: Interfaccia Grafica

1. Vai al menu **File > Import Dataset > From Text (base)...**.
2. Seleziona il file `.csv` che desideri importare.
3. Configura le opzioni di importazione (come il separatore) e clicca su **Import**.

#### Metodo 2: Tramite Codice

Puoi usare la funzione `read.csv()` per caricare un file `.csv` direttamente con il codice:

```r
# Caricamento di un file CSV
dati <- read.csv("percorso/del/file.csv")
head(dati)
```

Sostituisci `"percorso/del/file.csv"` con il percorso corretto del file.

### Formato XLSX

Un file **XLSX** è un file di foglio di calcolo creato da Microsoft Excel. A differenza di un file CSV, può contenere più fogli e una formattazione avanzata. Per leggere un file `.xlsx` in R, è necessario utilizzare un pacchetto come `readxl`.

#### Metodo 1: Interfaccia Grafica

1. Vai al menu **File > Import Dataset > From Excel...**.
2. Seleziona il file `.xlsx` da importare e configura le opzioni.
3. Clicca su **Import** per caricare i dati.

#### Metodo 2: Tramite Codice

Dopo aver installato e caricato `readxl`, puoi utilizzare la funzione `read_excel()`:

```r
# Installazione del pacchetto readxl (se non già installato)
install.packages("readxl")
library(readxl)

# Caricamento di un file Excel
dati <- read_excel("percorso/del/file.xlsx")
head(dati)
```

Sostituisci `"percorso/del/file.xlsx"` con il percorso corretto del file.

---

Con questa guida, ora sai come caricare dati in RStudio utilizzando diversi metodi, sia per i dataset integrati in R, quelli inclusi in pacchetti come `Ecdat`, sia per i file esterni `.csv` e `.xlsx`. Utilizza questi approcci per iniziare ad analizzare i tuoi dati in modo efficace!

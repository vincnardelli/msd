---
layout: page
title: Usare R e RStudio
permalink: /guide/usare_r_rstudio
parent: Guide
nav_order: 2
---

# Usare R e RStudio
{:.no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Perché utilizzare RStudio invece di R?

R è il linguaggio di programmazione che esegue i calcoli e le operazioni statistiche, ma RStudio offre un’interfaccia avanzata che rende il lavoro con R molto più intuitivo ed efficiente. **Ecco alcuni dei principali vantaggi di utilizzare RStudio:**

- **Interfaccia Organizzata**: RStudio suddivide l’ambiente di lavoro in più pannelli per visualizzare script, console, file, e grafici, rendendo più semplice la gestione del codice e delle risorse.
- **Gestione dei Progetti**: RStudio permette di creare progetti, facilitando l'organizzazione dei file e delle risorse per uno specifico lavoro, corso o progetto.
- **Visualizzazione dei Grafici e dei Risultati**: I risultati delle analisi, incluse tabelle e grafici, vengono visualizzati direttamente nell’interfaccia, rendendo più semplice la loro consultazione e interpretazione.

In sintesi, RStudio è progettato per semplificare il lavoro con R, rendendo l’esperienza molto più user-friendly.

## Creare un Progetto per il Corso

Per lavorare in modo ordinato, è consigliabile creare un **progetto specifico per il corso** e usare sempre lo stesso per mantenere organizzati i file e i dati.

### Istruzioni per creare un progetto in RStudio

1. Apri RStudio e vai al menu **File > New Project**.
2. Seleziona **New Directory** per creare una nuova cartella per il progetto.
3. Scegli **New Project** e inserisci un nome per la cartella, ad esempio “Corso_R”.
4. Scegli una posizione sul tuo computer in cui vuoi salvare il progetto.
5. Clicca su **Create Project**. 

RStudio ora aprirà il progetto, che funge da contenitore per tutti i file, script e dati relativi al corso. Utilizzando sempre questo progetto, puoi assicurarti che tutti i file siano ben organizzati e facilmente accessibili.

### Organizzare i File nel Progetto

È importante mantenere una struttura ordinata all'interno della cartella del progetto. Inserisci tutti i tuoi file R e i dati nello stesso progetto per facilitare l’accesso e il caricamento. In questo modo, eviterai problemi legati ai percorsi dei file e renderai il tuo lavoro più gestibile. Utilizzando questa organizzazione, il tuo progetto sarà ben strutturato e ogni file sarà facilmente accessibile e gestibile.

## Differenza tra Dati e File R

Nel contesto di R e RStudio, è utile comprendere la differenza tra **file R** e **dati**.

- **File R**: Un file con estensione `.R` contiene script di codice R, ovvero le istruzioni e i comandi che eseguono operazioni sui dati. Qui puoi scrivere tutte le linee di codice che ti permettono di manipolare, analizzare e visualizzare i dati.
  
- **Dati**: I dati sono generalmente contenuti in file come `.csv`, `.xlsx` o `.txt`, che contengono le informazioni da analizzare. In RStudio, questi file vengono caricati nel progetto e trattati attraverso le istruzioni di codice contenute nei file `.R`.
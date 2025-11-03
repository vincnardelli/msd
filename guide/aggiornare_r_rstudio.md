---
layout: page
title: Aggiornare R e RStudio
permalink: /guide/aggiornare_r_rstudio
parent: Guide
nav_order: 5
---

# Aggiornare R e RStudio
{:.no_toc}

## Table of contents
{: .no_toc .text-delta }

1. TOC
{:toc}

## Introduzione

Aggiornare R e RStudio all’ultima versione disponibile garantisce che tu possa usufruire delle funzionalità più recenti e di miglioramenti di performance e sicurezza. In questa guida, vedremo come aggiornare R e RStudio su sistemi Windows, macOS e Linux.

---

## Aggiornare R

### Windows

1. Vai alla pagina di download di CRAN: [Download R per Windows](https://cran.r-project.org/bin/windows/base/).
2. Scarica l’ultima versione di R cliccando su **Download R for Windows**.
3. Una volta scaricato il file, esegui l’installazione come faresti per una nuova installazione.
4. Durante l’installazione, scegli di installare R nella stessa cartella della versione precedente per sostituirla.
5. Dopo l’aggiornamento, potrebbe essere necessario reinstallare i pacchetti. 

### macOS

1. Vai alla pagina di download di CRAN: [Download R per macOS](https://cran.r-project.org/bin/macosx/).
2. Scarica l’ultima versione di R.
3. Apri il file `.pkg` e segui la procedura guidata di installazione.
4. L’aggiornamento di R su macOS sovrascrive automaticamente la versione precedente, ma conserva i pacchetti installati.

### Linux (Ubuntu/Debian)

1. Apri il terminale.
2. Aggiungi il repository CRAN per assicurarti di ottenere l'ultima versione:

   ```bash
   # Aggiorna i pacchetti esistenti
   sudo apt update
   
   # Installa le dipendenze necessarie
   sudo apt install -y software-properties-common dirmngr
   
   # Aggiungi la chiave GPG
   wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | sudo tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
   
   # Aggiungi il repository CRAN
   sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
   
   # Aggiorna la lista dei pacchetti
   sudo apt update
   ```

3. Installa o aggiorna R con:

   ```bash
   sudo apt install r-base
   ```

---

## Aggiornare RStudio

L'aggiornamento di RStudio è semplice e funziona allo stesso modo per tutti i sistemi operativi. Visita la pagina di download di RStudio, scarica la versione più recente e installala.

### Passaggi per Aggiornare RStudio

1. Vai alla pagina di download di RStudio: [Download RStudio](https://posit.co/download/rstudio-desktop/).
2. Scarica la versione più recente di RStudio per il tuo sistema operativo.
3. Una volta completato il download, apri il file e segui le istruzioni di installazione.
4. L’installazione sovrascriverà la versione precedente di RStudio, ma manterrà le impostazioni e le preferenze dell’utente.

### Note per i Diversi Sistemi Operativi

- **Windows**: Il file scaricato sarà un installer `.exe`. Eseguilo e segui la procedura guidata.
- **macOS**: Il file sarà un `.dmg`. Apri il file e trascina l’icona di RStudio nella cartella Applicazioni per completare l’installazione.
- **Linux**: Scarica il file `.deb` o `.rpm` a seconda della tua distribuzione e installalo con il comando appropriato. Ad esempio, per Ubuntu:

   ```bash
   sudo dpkg -i rstudio-<version>.deb
   sudo apt-get install -f  # per risolvere eventuali dipendenze
   ```

---

## Conferma della Versione Aggiornata

Dopo aver completato l’aggiornamento di R e RStudio, puoi verificare le versioni installate.

### Verifica della Versione di R

Apri R o RStudio e inserisci il comando:

```r
version
```

### Verifica della Versione di RStudio

In RStudio, vai su **Help > About RStudio**. Qui troverai il numero della versione installata.

---

Ora sei pronto per utilizzare le versioni più recenti di R e RStudio con tutti i miglioramenti e le funzionalità più aggiornate!

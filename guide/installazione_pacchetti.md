---
layout: page
title: Installazione dei Pacchetti in RStudio
permalink: /guide/installazione_pacchetti
parent: Guide
nav_order: 3
---

## 3. Installazione dei Pacchetti in RStudio

### Cosa sono i Pacchetti

I pacchetti sono raccolte di funzioni, dati e documentazione. Ogni pacchetto deve essere **installato una volta** e **caricato ad ogni nuova sessione**.

### Installare un Pacchetto

#### Metodo 1: Interfaccia Grafica

1. Vai su **Packages** nel pannello in basso a destra.
2. Clicca su **Install**, scrivi il nome del pacchetto (es. `ggplot2`) e conferma.

#### Metodo 2: Tramite Codice

```r
install.packages("ggplot2")
```

### Caricare un Pacchetto

Per utilizzare il pacchetto `ggplot2`, caricalo con:

```r
library(ggplot2)
```

### Esempio Completo

```r
# Installazione (una volta)
install.packages("ggplot2")

# Caricamento (ogni sessione)
library(ggplot2)

# Esempio di grafico
ggplot(data = mtcars, aes(x = mpg, y = hp)) +
  geom_point()
```

Ora sei pronto per lavorare con R e RStudio! Utilizzando questa guida, puoi iniziare a esplorare l'analisi e la visualizzazione dei dati in R.

---
layout: page
title: Google Colab
permalink: /guide/colab
parent: Guide
nav_order: 1
---

# 🐍 Google Colab
{:.no_toc}

**Google Colab** è un notebook Python che gira nel browser: nessuna installazione, basta un account Google. È lo strumento con cui facciamo i laboratori del corso e le esercitazioni.

1. TOC
{:toc}

## Aprire un notebook del corso

1. Nella pagina del capitolo, accanto al notebook, clicca **Apri in Colab**.
2. Se Colab lo chiede, accedi con l'account Google.
3. Per lavorare sulla tua copia: **File → Salva una copia in Drive**. La copia finisce nella cartella *Colab Notebooks* del tuo Google Drive. Senza questo passaggio le modifiche vanno perse quando chiudi la scheda.

## Come funziona un notebook

- Un notebook è fatto di **celle**: di testo (le spiegazioni) e di codice.
- Per eseguire una cella di codice: clicca dentro e premi **Shift + Invio**. L'output compare sotto la cella. Il numero tra parentesi quadre a sinistra (`[3]`) dice in che ordine l'hai eseguita.
- Le celle si eseguono **dall'alto verso il basso**: la prima importa le librerie, le successive usano quello che le precedenti hanno creato. Se salti una cella, quelle dopo danno `NameError`.
- **+ Codice** e **+ Testo** (in alto, o passando con il mouse tra due celle) aggiungono una cella; il cestino la elimina.
- Dopo un po' di inattività Colab spegne il *runtime* e dimentica tutte le variabili. Non è un errore: rifai **Runtime → Esegui tutto**.
- **Runtime → Riavvia e esegui tutto** è anche il modo migliore per controllare che il notebook funzioni da capo, prima di consegnarlo.

### Trucchi dell'editor

- **Tab** completa il nome di una variabile, di una funzione o di una colonna: scrivi `happy.he` e premi Tab.
- Un **punto interrogativo** dopo un nome apre la documentazione: `pl.read_csv?`.
- Il **cancelletto** rende una riga un commento, che Python ignora: `# questa riga non viene eseguita`. Utile per spiegare cosa fa il codice o per disattivare una riga senza cancellarla.
- Se una cella non finisce mai (il cerchio continua a girare), fermala con il **quadrato** al posto del tasto play, oppure **Runtime → Interrompi esecuzione**.

## Caricare i dati del corso

I dati del corso stanno sul sito, non serve scaricarli. Ogni dataset ha la sua [scheda]({{ site.baseurl }}/dati/) con il codice pronto: clicca **Copia**, incolla in una cella e premi Shift + Invio.

```python
import polars as pl
happy = pl.read_csv("https://www.vincnardelli.com/msd/dati/happiness.csv")
happy.head()
```

`pl.read_csv` legge il file direttamente dall'indirizzo e lo trasforma in una **tabella** (un *DataFrame*): `happy.head()` mostra le prime cinque righe, `happy.shape` quante righe e colonne ha, `happy.columns` i nomi delle colonne. Le operazioni sulle tabelle sono nella guida [Polars e plotnine]({{ site.baseurl }}/guide/polars).

## Caricare un tuo file

### Un CSV

1. Apri il pannello dei file: l'icona della **cartella** nella barra a sinistra.
2. Clicca **Carica nello spazio di archiviazione della sessione** (l'icona con la freccia verso l'alto) e scegli il file dal tuo computer.
3. Leggilo per nome:

```python
vendite = pl.read_csv("vendite.csv")
```

I file esportati da Excel in italiano usano il **punto e virgola** come separatore e la **virgola** per i decimali. In quel caso:

```python
vendite = pl.read_csv("vendite.csv", separator=";", decimal_comma=True)
```

Se la tabella viene letta male (una sola colonna, numeri che risultano testo), il problema è quasi sempre questo.

### Un file Excel

Stesso caricamento, poi:

```python
vendite = pl.read_excel("vendite.xlsx")
```

Per leggere un foglio specifico: `pl.read_excel("vendite.xlsx", sheet_name="2025")`. Le intestazioni devono stare nella **prima riga** del foglio: se sopra ci sono titoli o righe vuote, meglio toglierli in Excel prima di caricare.

### Da Google Drive

I file caricati nel pannello **spariscono** quando il runtime si spegne. Per un file che userai più volte, mettilo nel tuo Google Drive e collega il Drive al notebook:

```python
from google.colab import drive
drive.mount("/content/drive")
vendite = pl.read_csv("/content/drive/MyDrive/vendite.csv")
```

Colab chiede l'autorizzazione la prima volta. Il percorso del file si copia dal pannello dei file: tasto destro → **Copia percorso**.

## Salvare un risultato

Una tabella si esporta con `write_csv` o `write_excel`; il file compare nel pannello dei file, da cui si scarica (tasto destro → **Scarica**).

```python
riepilogo.write_csv("riepilogo.csv")
riepilogo.write_excel("riepilogo.xlsx")
```

Un grafico di plotnine si salva con `.save("grafico.png")` al posto di mostrarlo.

## Leggere gli errori

Quando una cella fallisce, Python scrive molte righe rosse: conta **l'ultima**, che dice il tipo di errore e la causa. Quelli che incontrerai quasi sempre:

| errore | significa | cosa fare |
|---|---|---|
| `NameError: name 'pl' is not defined` | usi un nome che non esiste ancora | esegui le celle precedenti (di solito quella degli `import`), o controlla come l'hai scritto |
| `SyntaxError: invalid syntax` | la riga non è Python corretto | cerca una parentesi o una virgoletta non chiusa, una virgola mancante |
| `ColumnNotFoundError: "Income"` | la colonna non c'è | controlla il nome con `df.columns`: maiuscole e spazi contano |
| `FileNotFoundError` | il file non c'è dove lo cerchi | ricaricalo nel pannello (il runtime si è riavviato?) o controlla il percorso |
| `ModuleNotFoundError: No module named 'x'` | la libreria non è installata | `!pip install x`, poi rilancia l'`import` |
| `TypeError` o `ComputeError` su una colonna di testo | stai facendo un calcolo su stringhe | la colonna è stata letta come testo: spesso è la virgola decimale (vedi sopra) |

Se non capisci l'errore, copia l'ultima riga e cercala, oppure chiedi all'AI integrata (sotto).

## L'AI dentro Colab

Colab ha **Gemini** integrato: il pulsante **Spiega l'errore** compare sotto una cella fallita, e il riquadro *Genera* in una cella vuota scrive codice a partire da una richiesta in italiano. Due regole:

1. **Leggi il codice prima di eseguirlo.** L'AI inventa nomi di colonne e funzioni con la stessa sicurezza con cui scrive quelli giusti. Se usa `pandas` al posto di `polars`, chiedi esplicitamente polars.
2. **Controlla il risultato con un calcolo che sai fare.** Una media, un conteggio: se tornano, il resto è probabilmente giusto. È la stessa logica della lezione 1: delegare il calcolo, non la responsabilità.

## Consegnare un notebook

- **File → Scarica → Scarica .ipynb** salva il file sul computer, con output compresi.
- **File → Stampa** produce un PDF con codice, risultati e grafici.
- Dalla copia in Drive, **Condividi** in alto a destra dà un link al notebook, come per un documento Google.

Prima di consegnare: **Runtime → Riavvia e esegui tutto**, così sei sicuro che il notebook funzioni dall'inizio alla fine.

## Se manca una libreria

Colab ha già polars e plotnine. Se un `import` dà `ModuleNotFoundError`, si installa dal notebook con il punto esclamativo davanti, poi si rilancia l'import:

```python
!pip install plotnine
```

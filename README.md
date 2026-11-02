---
layout: home
title: Metodi Matematici e Statistici per le Decisioni Economiche 2026/2027
nav_exclude: false
nav_order: 1
permalink: index.html
seo:
  type: Metodi Matematici e Statistici per le Decisioni Economiche 2026/2027
  name: Management, Imprese e Mercati - Università Cattolica del Sacro Cuore
---

# 📊 Metodi Matematici e Statistici per le Decisioni Economiche 2026/2027

{% assign capitoli = site.capitoli | sort: 'number' %}
{% assign oggi = 'now' | date: '%Y-%m-%d' %}
{% assign prossima = nil %}{% for l in site.data.lezioni %}{% assign dstr = l.data | date: '%Y-%m-%d' %}{% if dstr >= oggi and prossima == nil %}{% assign prossima = l %}{% endif %}{% endfor %}
{% if prossima %}{% assign mesi = 'gennaio|febbraio|marzo|aprile|maggio|giugno|luglio|agosto|settembre|ottobre|novembre|dicembre' | split: '|' %}{% assign mi = prossima.data | date: '%-m' | minus: 1 %}
<div class="dove-siamo">
  <span class="dove-siamo__k">{% if prossima.data == oggi %}Oggi{% else %}Prossima lezione{% endif %}</span>
  <span class="dove-siamo__t">{{ prossima.giorno }} {{ prossima.data | date: '%-d' }} {{ mesi[mi] }}, {{ prossima.ora }}, {{ prossima.aula }}</span>
  <a class="muted" href="{{ site.baseurl }}/schedule/">tutto il calendario →</a>
</div>
{% endif %}

**Metodi Matematici e Statistici per le Decisioni Economiche** è un corso del corso di laurea magistrale in **Management, Imprese e Mercati** presso la Facoltà di **Economia** dell'Università Cattolica del Sacro Cuore, sede di Roma. Il corso è strutturato in due moduli principali, matematico e statistico ed è progettato per fornire competenze essenziali nella rappresentazione e nell'analisi dei problemi economici, statistici e finanziari.

## 📘 A chi si rivolge il corso?

Il corso è pensato per studenti del corso di laurea magistrale in Management, Imprese e Mercati, con un focus sull'applicazione delle metodologie matematiche e statistiche a casi reali e concreti. Sono richieste competenze base di statistica, ma non competenze tecniche avanzate, poiché i concetti verranno trattati con un orientamento pratico e applicativo.

## 🔍 Perché è utile per studenti di Economia?

In un contesto economico sempre più orientato dai dati, conoscere e applicare il Data-Driven Decision Making è cruciale per prendere decisioni informate. Attraverso questo corso, gli studenti di **Management, Imprese e Mercati** acquisiranno strumenti per interpretare e utilizzare i dati, abilità fondamentali per affrontare con successo le sfide in ambito finanziario, aziendale e di mercato.

## 🎯 Obiettivi del Corso
L’obiettivo del corso è duplice: fornire una preparazione teorica solida su metodi e tecniche matematici e statistici e sviluppare competenze pratiche per analizzare e rappresentare scenari concreti in ambito economico e finanziario.

Al termine del corso, gli studenti saranno in grado di applicare i concetti teorici per risolvere problemi complessi, utilizzare il linguaggio e la simbologia matematica e statistica per rappresentare situazioni reali, con particolare attenzione agli ambiti economico, statistico e finanziario, e affrontare con autonomia e competenza studi avanzati.

## 🧭 Il percorso

<div class="sezioni sezioni--4">
{% assign sez_t = "Dati e decisioni|Modelli di regressione|Alberi e random forest|Verso l'esame" | split: "|" %}
{% assign sez_d = "Perché decidere con i dati, cosa può andare storto, e la statistica descrittiva che serve prima di ogni modello.|Il modello lineare per prevedere un numero, il modello logistico per prevedere un sì o un no, e come scegliere la soglia.|Alberi decisionali e random forest, a confronto con i modelli di regressione.|Una prova d'esame completa, risolta insieme." | split: "|" %}
{% for p in (1..4) %}{% assign i = p | minus: 1 %}{% assign del_sez = capitoli | where: 'sezione', p %}{% assign primo = del_sez | first %}{% assign ultimo = del_sez | last %}
  <a href="{{ site.baseurl }}{{ primo.url }}" class="sezione sezione--{{ p }}">
    <div class="sezione__n">{% if primo.number == ultimo.number %}Capitolo {{ primo.number }}{% else %}Capitoli {{ primo.number }}–{{ ultimo.number }}{% endif %}</div>
    <div class="sezione__t">{{ sez_t[i] }}</div>
    <div class="sezione__d">{{ sez_d[i] }}</div>
  </a>
{% endfor %}
</div>

## 🐍 Come si lavora

Tutto il codice del corso è in **Python**, in notebook (`.ipynb`) che si aprono con un clic in **Google Colab**, nel browser e senza installare nulla, oppure si scaricano e si aprono in **Jupyter** sul proprio computer. Per ogni capitolo trovi le slide, il codice della lezione e le esercitazioni; le soluzioni si pubblicano dopo la lezione. I dati si leggono direttamente dal sito.

[Vai al corso]({{ site.baseurl }}/corso/){: .btn .btn-primary } [Guide]({{ site.baseurl }}/guide/){: .btn .btn-outline }

## 📋 Programma del Corso

- **Python**: notebook in Google Colab o Jupyter, le librerie pandas, statsmodels e scikit-learn per l'analisi statistica.
- **Regressione**: Richiami di regressione lineare semplice e multipla, modelli logit per variabili dipendenti binarie.
- **Alberi decisionali**: Approccio agli alberi di decisione per regressione e classificazione.
- **Machine Learning**: Applicazione di Random Forest con divisione train-test e valutazione degli errori.

## 📌 Avvisi

{% assign announcements = site.announcements | reverse %}
{% for announcement in announcements %}
{{ announcement }}
{% endfor %}

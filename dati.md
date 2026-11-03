---
layout: page
title: Dati
permalink: /dati/
description: I dataset del corso, uno per pagina, con anteprima, descrizione e codice per leggerli
nav_order: 4
---

# 🗃 I dati del corso

Un dataset per pagina: cosa contiene, da dove viene, dove si usa nel corso e la riga di codice per leggerlo. I file si leggono direttamente dal sito, in Colab o in Jupyter; scaricarli serve solo per lavorare offline o aprirli in Excel. La pagina cresce con il corso.

<div class="espl-grid">
{% for d in site.dataset %}
<a class="espl-card" href="{{ site.baseurl }}{{ d.url }}">
  <div class="espl-card__title">{{ d.title }}</div>
  <div class="espl-card__q">{{ d.idea }}</div>
  <div class="muted"><code>{{ d.file }}</code> · {{ d.righe }} righe</div>
</a>
{% endfor %}
</div>

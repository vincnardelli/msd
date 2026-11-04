---
layout: page
title: Corso
permalink: /corso/
description: I capitoli del corso, con slide, notebook e dati
nav_order: 2
---

# 📚 Il corso

{% assign capitoli = site.capitoli | sort: 'number' %}
{% assign nomi = "Dati e decisioni|Modelli di regressione|Alberi e random forest|Verso l'esame" | split: "|" %}
{% for p in (1..4) %}
{% assign idx = p | minus: 1 %}
{% assign nsez = capitoli | where: 'sezione', p | size %}{% if nsez > 0 %}
<h2 class="sezione-h sezione-h--{{ p }}">{{ nomi[idx] }}</h2>
<div class="moduli-list">
{% for w in capitoli %}{% if w.sezione == p %}
<a class="modulo-row modulo-row--p{{ p }}" href="{{ site.baseurl }}{{ w.url }}">
  <div class="modulo-row__n">{{ w.number }}</div>
  <div><div class="modulo-row__t">{{ w.title }}</div><div class="modulo-row__i">{{ w.idea }}</div></div>
  <div><span class="tag tag--lang">Python</span> {% if w.notebook.size > 0 %}<span class="tag">{{ w.notebook.size }} notebook</span>{% endif %}</div>
</a>
{% endif %}{% endfor %}
</div>
{% endif %}
{% endfor %}

Gli altri capitoli compaiono qui man mano che si fanno a lezione.

{% assign eserc = site.esercitazioni | sort: 'number' %}
{% if eserc.size > 0 %}
<h2 class="sezione-h sezione-h--e">Esercitazioni</h2>
<p class="muted">Programmazione con Python applicata a statistica e finanza aziendale, con Francesca Cardile e Niccolò Salvini.</p>
<div class="moduli-list">
{% for e in eserc %}
<a class="modulo-row modulo-row--pe" href="{{ site.baseurl }}{{ e.url }}">
  <div class="modulo-row__n">E{{ e.number }}</div>
  <div><div class="modulo-row__t">{{ e.title }}</div><div class="modulo-row__i">{{ e.idea }}</div></div>
  <div><span class="tag tag--lang">Python</span></div>
</a>
{% endfor %}
</div>
{% endif %}

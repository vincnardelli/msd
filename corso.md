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

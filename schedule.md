---
layout: page
title: Calendario
permalink: /schedule/
description: Le 12 lezioni del corso, con giorno, ora e aula
nav_order: 9
---

# 🗓 Calendario delle lezioni

Il calendario ufficiale, con eventuali variazioni, è sulla [pagina del corso su unicatt.it](https://docenti.unicatt.it/ppd2/it/docenti/80554/vincenzo-nardelli/didattica).

{% assign oggi = 'now' | date: '%Y-%m-%d' %}
{% assign mesi = 'gennaio|febbraio|marzo|aprile|maggio|giugno|luglio|agosto|settembre|ottobre|novembre|dicembre' | split: '|' %}

<table class="calendario">
<thead><tr><th>#</th><th>data</th><th>ora</th><th>aula</th></tr></thead>
<tbody>
{% for l in site.data.lezioni %}
{% assign dstr = l.data | date: '%Y-%m-%d' %}
<tr class="{% if dstr < oggi %}is-past{% elsif dstr == oggi %}is-today{% endif %}">
  <td class="muted">{{ l.n }}</td>
  {% assign mi = l.data | date: '%-m' | minus: 1 %}<td><strong>{{ l.giorno }} {{ l.data | date: '%-d' }} {{ mesi[mi] }}</strong></td>
  <td>{{ l.ora }}</td>
  <td class="muted">{{ l.aula }}</td>
</tr>
{% endfor %}
</tbody>
</table>

Le lezioni sono tutte in **aula 201**. Attenzione all'orario, che cambia con il giorno: il **lunedì** (2 e 9 novembre, 7 dicembre) dalle **17:00 alle 19:00**; il **martedì** dalle **14:00 alle 17:00** il 3 e il 10 novembre, dalle **14:00 alle 16:00** dal 17 novembre; il **mercoledì** dalle **14:00 alle 17:00**.

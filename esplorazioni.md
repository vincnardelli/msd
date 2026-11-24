---
layout: page
title: Esplorazioni
permalink: /esplorazioni/
description: Pagine interattive per capire i concetti chiave
nav_order: 3
---

# 🔬 Esplorazioni

Pagine interattive, una per concetto: si gioca con un controllo e si guarda cosa succede. Ognuna risponde a una domanda sola.

{% if site.esplorazioni.size == 0 %}
<div class="via"><div class="via__k">In arrivo</div>Le esplorazioni vengono pubblicate insieme ai capitoli a cui si riferiscono.</div>
{% endif %}

{% assign esplorazioni = site.esplorazioni | sort: "ordine" %}
{% assign capitoli = site.capitoli | sort: "number" %}
{% for c in capitoli %}
{% assign espl_cap = esplorazioni | where: "capitolo", c.number %}
{% if espl_cap.size > 0 %}
<h2 class="sezione-h sezione-h--{{ c.sezione }}"><a href="{{ site.baseurl }}{{ c.url }}">{{ c.number }} · {{ c.title }}</a></h2>
<div class="espl-grid">
{% for e in espl_cap %}
<a class="espl-card" href="{{ site.baseurl }}{{ e.url }}">
  <div class="espl-card__title">{{ e.title }}</div>
  <div class="espl-card__q">{{ e.question }}</div>
  {% unless e.ready %}<div class="muted">in arrivo</div>{% endunless %}
</a>
{% endfor %}
</div>
{% endif %}
{% endfor %}

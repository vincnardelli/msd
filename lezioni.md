---
layout: page
title: Lezioni
permalink: /lezioni/
description: Lezioni del Corso Coding e Big Data - Vincenzo Nardelli
nav_order: 1
---

# 👨🏻‍🏫 Lezioni divise per capitoli

{% assign lezioni = site.lezioni  | sort: 'number'  %}
{% for lezione in lezioni %}
{{ lezione }}
{% endfor %}

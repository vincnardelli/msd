---
layout: page
title: Chi siamo
description: Docente ed esercitatrice del corso, con i contatti.
nav_order: 99
---

# 👋 Chi siamo

{% assign instructors = site.staffers | where: 'role', 'Instructor' | sort: 'order' %}
{% for staffer in instructors %}
{{ staffer }}
{% endfor %}

Non è previsto un orario fisso di ricevimento. Siamo a disposizione in aula prima e dopo ogni lezione e ogni esercitazione. Per esigenze particolari puoi scriverci via mail.

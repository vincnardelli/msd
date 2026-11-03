---
layout: page
title: Avvisi
permalink: /avvisi/
description: A feed containing all of the class announcements.
nav_order: 5
---

# 📣 Avvisi

{% assign announcements = site.announcements | reverse %}
{% for announcement in announcements %}
{{ announcement }}
{% endfor %}

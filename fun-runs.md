---
layout: default
permalink: /fun-runs/index.html
---

# Fun Runs
Beyond races, the Shenipsit Striders club also organizes “fun runs” where anyone (not just club members) is invited to participate:

{%- capture all_dates -%}
  {%- for event in site.fun-runs -%}
    {{ event.event[0].date }},
  {%- endfor -%}
{%- endcapture -%}

{%- assign dates_array = all_dates | split: "," | sort -%}

{% for date in dates_array %}
{% for event in site.fun-runs %}
{% if event.event[0].date == date %}
[{{ event.title }}]({{ event.url }})
: <time datetime="{{ event.event[0].date }}">{{ event.event[0].date | date:"%A, %B %e, %Y" }}</time>
: {{ event.meta }}
{% endif %}
{% endfor %}
{% endfor %}

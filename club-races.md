---
layout: default
permalink: /club-races/index.html
---
<header id="home-section">
  <div id="races" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
      {% for event in site.club-races %}
        <li data-target="#races" data-slide-to="{% increment data-slide-to %}" {% if forloop.first == true %}class="active"{% endif %}></li>
      {%- endfor -%}
    </ol>

<div class="carousel-inner">

{%- capture all_dates -%}
  {%- for event in site.club-races -%}
    {{ event.event[0].date }},
  {%- endfor -%}
{%- endcapture -%}

{%- assign dates_array = all_dates | split: "," | sort -%}

{%- assign carousel-item_active_assigned = false -%}        
{%- for date in dates_array %}
{%- for event in site.club-races -%}
{%- if event.event[0].date == date -%}
{% if carousel-item_active_assigned == true %}
<div class="carousel-item">
{% else %}
<div class="carousel-item active">
{% assign carousel-item_active_assigned = true %}
{% endif %}
  <a href="{{site.baseurl}}{{event.url}}">
    <img src="{{site.baseurl}}/images/{{event.image}}" alt="{{event.title}}" class="d-block w-100">
    <div class="container">
      <div class="carousel-caption text-left">
        <h1>{{event.title}}</h1>
{% if page.meta %}
  {{ page.meta | slice: 0, 164 | markdownify }}
{% endif %}
      </div>
    </div>
  </a>
</div>
{% endif %}
{% endfor %}
{% endfor %}
        
</div>

    <a class="carousel-control-prev" href="#races" role="button" data-slide="prev">
      <span class="carousel-control-prev-icon" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#races" role="button" data-slide="next">
      <span class="carousel-control-next-icon" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</header>

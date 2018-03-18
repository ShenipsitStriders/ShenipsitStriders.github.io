---
layout: default
---


# Fun Runs
Beyond races, the Shenipsit Striders club also organizes “fun runs” where anyone (not just club members) is invited to participate:

The [New Year Fatass]({{site.baseurl}}/fun-runs/new-year-fatass.html), starting the year out with a run among friends.
: 1-1-2018

The [Moonlight Run]({{site.baseurl}}/fun-runs/moonlight-run.html), which is the annual run by moonlight around Soapstone Mountain and to the top of the fire tower.
: 1-27-2018

The [Connecticut Ultra Traverse]({{site.baseurl}}/fun-runs/connecticut-ultra-traverse.html), a run across the state of Connecticut.
: 6-2-2018

The [Shenipsit Trail End-to-End]({{site.baseurl}}/fun-runs/shenipsit-trail-end-to-end.html), our club run along the length of the Shenipsit Trail, the weekend following Thanksgiving.
: 11-24-2018

events

{% assign event_array = site.events | sort: 'time' %}
{% for event in event_array %}
[{{ event.title }}]({{ event.url }}.html)
: {{ event.meta }}
: {{ event.event[0].time | date:"%A, %B %d %Y" }}
{% endfor %}

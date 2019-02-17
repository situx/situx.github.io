---
layout: page
title: GH Projects
permalink: /projects
show_meta: true
# imagefeature path is relative to images/ directory.
imagefeature: foo.png
published: true
description: "About situx.github.io...."
category: views
comments: false
mathjax: false
noindex: false
sitemap:
    priority: 0.7
    changefreq: 'monthly'
    lastmod: 2016-02-13
# tags will be used as html meta keywords.    
tags:
  - "foo boo"
  - "city tx"
---
My Github projects include programs in the following categories

<ul>
<li>Ancient Language Natural Language Processing on Cuneiform languages</li>
<li>Semantic GIS Research</li>
<li>Student projects including games and webapplications in C, Java and Scala</li>
<li>Miscellaneous projects developed in my spare time</li>
</ul>

{% for repository in site.github.public_repositories %}
  * [{{ repository.name }}]({{ repository.homepage }}) {{repository.description}} [Repository]({{repository.html_url}})
  [{{repository.language}}] <img src="https://travis-ci.com/situx/{{repository.name}}.svg?branch=master"/>
{% endfor %}

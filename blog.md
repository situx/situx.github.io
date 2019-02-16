---
layout: default
title: Blog
---


<div class="row">
    <div class="col-md-1"></div>
    <div class="col-md-7">
              <!-- Blog Post Links -->
              <div class="blog-post-small">
                {% for post in site.posts %}
                  <h3><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h3>
                  <p><i class="fa fa-calendar"></i> &nbsp;{{ post.date | date: "%b %-d, %Y" }} | {% if site.disqus_short_name and page.comments != false and site.disqus_show_comment_count == true %}
         <a href="{% if page.index %}{{ root_url }}{{ post.url }}{% endif %}#disqus_thread">Comments</a>
        {% endif %}</p>
                  {% if post.content contains '<!-- more -->' %}
                    <p>{{ post.content | split:'<!-- more -->' | first }}
                      <br><br>
                      <a href="{{ post.url }}" class="btn btn-primary btn-sm">Read More</a>
                    </p>
                  {% else %}
                    {{ post.content }}
                  {% endif %}
                {% endfor %}
              </div>
              <!-- End Blog Post Links -->
            </div>
            <!-- SideBar -->
            <div class="col-md-3">
              {% if site.feedburner_username %}
			  <p><a href="https://feeds.feedburner.com/{{site.feedburner_username}}">
			  <img style="margin-left:auto;margin-right:auto;" src="https://feeds.feedburner.com/~fc/{{site.feedburner_username}}?bg=007196&amp;fg=FFFFFF&amp;anim=1" height="26" width="88"
			  style="border:1;" alt="" /></a></p>
                {% endif %}
            </div>
            <!-- End Sidebar -->
            <div class="col-md-1"></div>
</div>
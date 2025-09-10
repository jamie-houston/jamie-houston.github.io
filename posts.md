---
layout: page
title: Posts
background: 'https://images.unsplash.com/photo-1455390582262-044cdead277a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2073&q=80'
---

## All Blog Posts

{% for post in site.posts %}
<div class="post-preview">
  <a href="{{ post.url | relative_url }}">
    <h2 class="post-title">{{ post.title }}</h2>
    {% if post.subtitle %}
    <h3 class="post-subtitle">{{ post.subtitle }}</h3>
    {% endif %}
  </a>
  <p class="post-meta">Posted on {{ post.date | date: "%B %d, %Y" }}
  {% if post.categories.size > 0 %}
  in {% for category in post.categories %}
  <span class="badge badge-secondary">{{ category }}</span>
  {% endfor %}
  {% endif %}
  </p>
  <div class="post-excerpt">
    {{ post.excerpt | strip_html | truncatewords: 40 }}
  </div>
</div>
<hr>
{% endfor %}
---
layout: page
title: "Obsidian Posts"
background: https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2028&q=80
---

# Obsidian Posts

{% assign category_posts = site.posts | where: 'categories', 'obsidian' %}

{% for post in category_posts %}
<div class="post-preview">
  <a href="{{ post.url | relative_url }}">
    <h2 class="post-title">{{ post.title }}</h2>
    {% if post.subtitle %}
    <h3 class="post-subtitle">{{ post.subtitle }}</h3>
    {% endif %}
  </a>
  <p class="post-meta">{{ post.date | date: "%B %d, %Y" }}</p>
  <p>{{ post.excerpt | strip_html | truncate: 150 }}</p>
</div>
<hr>
{% endfor %}

{% if category_posts.size == 0 %}
<p>No posts found in this category yet. Check back later!</p>
{% endif %}

<p><a href="{{ site.baseurl }}/categories/">&larr; Back to all categories</a></p>
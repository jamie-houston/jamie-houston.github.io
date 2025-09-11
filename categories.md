---
layout: page
title: Categories
background: https://images.unsplash.com/photo-1481627834876-b7833e8f5570?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2028&q=80
---

## Browse Posts by Category

<div class="categories-grid">
  {% assign categories = site.posts | map: 'categories' | join: ',' | split: ',' | uniq | sort %}
  {% for category in categories %}
    {% assign category_posts = site.posts | where: 'categories', category %}
    <div class="category-card">
      <h3><a href="{{ site.baseurl }}/category/{{ category | slugify }}/">{{ category | capitalize }}</a></h3>
      <p>{{ category_posts | size }} post{% if category_posts.size != 1 %}s{% endif %}</p>
    </div>
  {% endfor %}
</div>

<style>
.categories-grid {
  display: grid;
  grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
  gap: 1rem;
  margin: 2rem 0;
}

.category-card {
  padding: 1.5rem;
  border: 1px solid #ddd;
  border-radius: 8px;
  background-color: #f8f9fa;
  transition: box-shadow 0.3s ease;
}

.category-card:hover {
  box-shadow: 0 4px 8px rgba(0,0,0,0.1);
}

.category-card h3 {
  margin: 0 0 0.5rem 0;
}

.category-card h3 a {
  text-decoration: none;
  color: #333;
}

.category-card h3 a:hover {
  color: #007bff;
}

.category-card p {
  margin: 0;
  color: #666;
  font-size: 0.9rem;
}
</style>

---

## All Posts by Category

{% assign categories = site.posts | map: 'categories' | join: ',' | split: ',' | uniq | sort %}
{% for category in categories %}
  {% assign category_posts = site.posts | where: 'categories', category %}
  
### {{ category | capitalize }}
  
  {% for post in category_posts %}
  - [{{ post.title }}]({{ post.url | relative_url }}) - {{ post.date | date: "%B %d, %Y" }}
  {% endfor %}
  
{% endfor %}
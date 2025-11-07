---
layout: post
title: "Creating And Deploying A New Blog In Two Hours With AI"
subtitle: "Creating and hosting a personal blog using AI"
date: 2025-09-10 14:20:00 -0800
categories: [tutorial, github-pages, claude-code]
tags: [jekyll, blog, setup, automation]
background: https://images.unsplash.com/photo-1555066931-4365d14bab8c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80
---

# Creating And Deploying A New Blog In Two Hours With AI

This morning I decided to set aside 2 hours to create a new blog. I knew I wanted to use [GitHub Pages](https://pages.github.com/) and [Claude Code](https://claude.ai/code).

My requirements were:

- Use [Markdown](https://www.markdownguide.org) files for the posts
- Easy to deploy/update
- Create the first post (this one) describing it
- Not look awful

With that figured out, I told Claude Code to get to work.

## The Initial Prompt

Here's exactly what I asked Claude Code to get this whole process started:

> "I want to setup a github blog. I think I can do it from a github repo (that I'm currently in). If that's true, help me set it up. Also create the first blog post, which documents how I set it up using Claude Code"

That single prompt kicked off the process and created the blog you're reading now.  All I did was answer some questions and update the outputed post (so it wasn't AI slop).  The outline, images, tags, etc, were all done by Claude Code.

## Then What Happened...

![The Setup Process](https://images.unsplash.com/photo-1618477247222-acbdb0e159b3?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2128&q=80){: .img-fluid}

Here's how Claude Code helped me set up this blog:

### 1. Repository Analysis

Claude Code started by examining my existing repository structure. I already had a partial Jekyll setup with:
- A basic `_config.yml` file
- A GitHub Actions workflow for Jekyll deployment
- An existing `index.md` with useful development tools

I could've started from scratch with no Jekyll config or anything setup and Claude would've rolled with that, possibly even quicker.  But I'd tried this before without Claude so here we were.

### 2. Jekyll Configuration

Claude Code enhanced my `_config.yml` with proper blog settings:

```yaml
title: Jamie Houston's Blog
description: A blog about development tools, tips, and tech adventures
author: Jamie Houston
baseurl: ""
url: "https://jamie-houston.github.io"

# Build settings
markdown: kramdown
highlighter: rouge
theme: jekyll-theme-architect

# Plugins
plugins:
  - jekyll-feed
  - jekyll-sitemap

# Posts settings
permalink: /:categories/:year/:month/:day/:title:output_ext
```

I had some back and forth here looking at themes and figuring out what I wanted the UI to look like.  Claude showed me where to look and gave me suggestions based on the styles and examples I said I liked.

### 3. Directory Structure

The essential Jekyll directories were created:
- `_posts/` - Where blog posts live
- `_layouts/` - Custom page layouts (if needed)

### 4. Homepage Transformation

The existing `index.md` was transformed from a simple tools list (my original use for this site) into a proper blog homepage that:
- Shows recent blog posts
- Links to my resume
- Has proper Jekyll front matter

### 5. First Blog Post

And here we are! This very post documents the setup process, creating a nice meta-documentation loop.  I updated the bulk of the text to give it my voice (or, let's be honest, _a voice_), but Claude did the outline and technical notes.

### 6. The GitHub Actions Workflow

Claude created a Jekyll GitHub Actions workflow that will automatically build and deploy the site whenever I push changes. This means the blog is fully automated - I just need to write posts and push them to the repository (which I guess means I need to write more blog posts...)

## Useful Links

- [Claude Code](https://claude.ai/code) - Anthropic's CLI development tool
- [GitHub Pages](https://pages.github.com/) - Free static site hosting
- [Jekyll](https://jekyllrb.com/) - Static site generator
- [Jekyll Themes](https://jekyllrb.com/docs/themes/) - Customize your blog's appearance
- [GitHub Actions for Pages](https://github.com/actions/deploy-pages) - Automated deployment

## Final Thoughts

AI is taking the world by storm.  Some people are embracing it, some are running away and avoiding it, but most are just using the tip of the iceburg.  A lot of my conversations with people about AI start with them saying "I don't really see much use out of it" or "I've tried it for coding, but...".  My goal for this blog is to help them out.  It's not just for coding or research or simple tasks and questions.  Anything you spend a bunch of time working on can likely be helped with AI and I hope to help you see that.

---
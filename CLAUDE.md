# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Jekyll-based GitHub Pages blog site for Jamie Houston. The site uses the Jekyll Theme Architect and includes blog posts, a resume page, and various development tool configurations.

## Development Commands

### Local Development
```bash
# Install dependencies
bundle install

# Serve the site locally (typically on http://localhost:4000)
bundle exec jekyll serve

# Build the site
bundle exec jekyll build
```

### Ruby/Jekyll Setup
If Ruby/Jekyll aren't installed:
```bash
# Install Ruby via Homebrew (macOS)
brew install ruby

# Add Homebrew Ruby to PATH
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Install Bundler and Jekyll
gem install bundler jekyll
```

## Architecture & Structure

### Jekyll Site Structure
- `_config.yml` - Main Jekyll configuration with site metadata, plugins, and build settings
- `_posts/` - Blog posts in Markdown format with YYYY-MM-DD-title.md naming convention
- `_layouts/` - Currently empty, relies on jekyll-theme-architect for layouts
- `_site/` - Generated site output (excluded from git)
- `index.md` - Homepage with recent posts listing and tool recommendations
- `resume.md` - Resume page content

### Content Organization
- Blog posts use Jekyll front matter with layout, title, date, and categories
- Homepage includes curated lists of development tools and resources
- Resume content is separate from the PDF version in `docs/`

### GitHub Pages Deployment
- Deploys via GitHub Actions workflow (`.github/workflows/jekyll-gh-pages.yml`)
- Triggers on pushes to `gh-pages` branch
- Uses official Jekyll build action for GitHub Pages

### Additional Directories
- `docs/` - Contains PDF resume
- `fish/` - Fish shell configuration and custom functions
- `zsh/` - Zsh configuration, aliases, and custom functions
- `site/` - Legacy/alternative site content

## Key Jekyll Configuration
- Theme: `jekyll-theme-architect`
- Plugins: `jekyll-feed`, `jekyll-sitemap`
- Markdown processor: `kramdown`
- Syntax highlighter: `rouge`
- Permalink structure: `/:categories/:year/:month/:day/:title:output_ext`
- Pagination: 5 posts per page

## Dependencies
Ruby gems managed via Bundler:
- Jekyll 4.4+
- jekyll-theme-architect
- jekyll-feed (RSS feed generation)
- jekyll-sitemap (XML sitemap generation)
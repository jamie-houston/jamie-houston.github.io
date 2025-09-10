# Image Assets

This directory contains images for the Jekyll blog. The following images are referenced in the blog posts:

## Featured Images (Hero Images)
- `obsidian-dataview-scheduling.jpg` - For the Obsidian Dataview post
- `obsidian-claude-workflow.jpg` - For the Obsidian + Claude Code post  
- `github-pages-jekyll-setup.jpg` - For the GitHub Pages setup post
- `clean-blog-theme-showcase.jpg` - For the Clean Blog theme guide

## Inline Images
- `obsidian-dataview-example.png` - Screenshot of Obsidian Dataview in action
- `obsidian-workspace-example.png` - Obsidian workspace showing interconnected notes
- `github-pages-setup-process.png` - GitHub Pages setup process diagram
- `clean-blog-hero-example.jpg` - Clean Blog theme hero image example

## Where to Get Images

### Free Stock Photo Sites
- **Unsplash** (https://unsplash.com) - High-quality photos, no attribution required
- **Pexels** (https://pexels.com) - Free stock photos and videos
- **Pixabay** (https://pixabay.com) - Large collection of free images
- **Burst by Shopify** (https://burst.shopify.com) - Business-focused imagery

### For Technical Content
- Take screenshots of your actual tools and workflows
- Use diagram tools like Draw.io or Lucidchart for process flows
- Create code screenshots with syntax highlighting

### Image Specifications
- **Featured images**: 1200x630px (16:9 aspect ratio)
- **Inline images**: 800-1200px wide
- **Format**: JPG for photos, PNG for screenshots/diagrams
- **Optimization**: Compress images before uploading

## Adding Images to Posts

### Featured Image (Hero)
Add to post front matter:
```yaml
image: /assets/img/your-image.jpg
```

### Inline Images
Use standard Markdown:
```markdown
![Alt text](/assets/img/your-image.jpg)
*Caption text*
```

### Responsive Images
For more control, use HTML:
```html
<img src="/assets/img/your-image.jpg" 
     alt="Descriptive alt text" 
     class="img-fluid" 
     loading="lazy">
```

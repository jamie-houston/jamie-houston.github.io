---
layout: post
title: "Clean Blog Theme Image Guide"
date: 2025-09-11 10:00:00 -0800
categories: [tutorial, jekyll, design]
image: /assets/img/clean-blog-theme-showcase.jpg
---

The Clean Blog theme for Jekyll provides excellent support for images in blog posts. This guide demonstrates various ways to incorporate images effectively into your content.

![Clean Blog theme hero image example](/assets/img/clean-blog-hero-example.jpg)
*The Clean Blog theme's hero image feature creates an engaging visual introduction to your posts*

## Featured Images

The Clean Blog theme supports featured images through the `image` field in your post's front matter. This image appears as a hero image at the top of your post and in post listings.

```yaml
---
layout: post
title: "Your Post Title"
date: 2025-09-11 10:00:00 -0800
categories: [category]
image: /assets/img/your-featured-image.jpg
---
```

## Inline Images

You can add images anywhere in your post content using standard Markdown syntax:

![Sample inline image with caption](/assets/img/sample-inline-image.png)
*This is how you add captions to your images using italic text below the image*

## Image Best Practices

### 1. Image Sizing
- **Featured images**: 1200x630px or similar 16:9 aspect ratio
- **Inline images**: 800-1200px wide for optimal readability
- **Thumbnails**: 300x200px for gallery views

### 2. File Organization
Store all images in the `assets/img/` directory:
```
assets/
└── img/
    ├── featured-images/
    ├── inline-images/
    └── thumbnails/
```

### 3. Image Optimization
- Compress images before uploading
- Use WebP format when possible
- Provide alt text for accessibility

## Responsive Images

The Clean Blog theme automatically makes images responsive. For more control, you can use HTML:

```html
<img src="/assets/img/your-image.jpg" 
     alt="Descriptive alt text" 
     class="img-fluid" 
     loading="lazy">
```

## Image Galleries

For multiple related images, you can create simple galleries:

![First gallery image](/assets/img/gallery-1.jpg)
*Caption for first image*

![Second gallery image](/assets/img/gallery-2.jpg)
*Caption for second image*

![Third gallery image](/assets/img/gallery-3.jpg)
*Caption for third image*

## Code Screenshots

When documenting code or processes, screenshots are invaluable:

![Code example in action](/assets/img/code-screenshot.png)
*Screenshot showing code execution with syntax highlighting*

## Where to Find Images

### Free Stock Photo Sites
- **Unsplash**: High-quality photos, no attribution required
- **Pexels**: Free stock photos and videos
- **Pixabay**: Large collection of free images
- **Burst by Shopify**: Business-focused imagery

### Technical Content Images
- **Screenshots**: Take your own screenshots of tools and processes
- **Diagrams**: Create flowcharts and diagrams using tools like Draw.io
- **Code snippets**: Use syntax highlighting tools for code examples

## Image Attribution

While many free image sites don't require attribution, it's good practice to credit photographers when possible:

> Photo by [Photographer Name](https://unsplash.com/@username) on [Unsplash](https://unsplash.com)

## Conclusion

The Clean Blog theme makes it easy to create visually appealing posts with proper image support. By following these guidelines, you can enhance your content with relevant, high-quality images that improve reader engagement.

Remember to:
- Use featured images for post previews
- Add inline images to support your content
- Optimize images for web performance
- Include descriptive alt text for accessibility

---

*This guide demonstrates the Clean Blog theme's image capabilities and provides practical tips for creating engaging visual content.*

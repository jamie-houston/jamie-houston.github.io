# Jamie Houston's Blog

A Jekyll-based blog about development tools, tips, and tech adventures.

🌐 **Live Site**: [houstonthings.com](https://houstonthings.com)

## Local Development

**Quick Start**:
```bash
# Use Homebrew Ruby (required!)
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"

# Install dependencies
bundle install

# Start development server
bundle exec jekyll serve
```

Visit http://127.0.0.1:4000 to view locally.

## Common Issues

**Bundler version error?** You're using system Ruby instead of Homebrew Ruby:
```bash
export PATH="/opt/homebrew/opt/ruby/bin:$PATH"
bundle exec jekyll serve
```

**Config changes not showing?** Restart the Jekyll server after editing `_config.yml`.

## Site Details

- **Theme**: Chirpy
- **Deployment**: GitHub Pages via Actions
- **Ruby Version**: 3.4+ (via Homebrew)

For detailed development guidance, see [CLAUDE.md](CLAUDE.md).

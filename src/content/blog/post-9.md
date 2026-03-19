---
title: Astro Islands Architecture
description: How partial hydration allows for perfect Lighthouse scores.
pubDate: 2026-03-17
category: Astro
authorId: charlie
---

# Astro Islands Architecture

By default, Astro strips out all JavaScript. You only ship JS when you explicitly opt-in!

## Understanding Islands

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa.

### Performance Benefits

- **Zero JS by Default**: Your site loads instantly.
- *Interactive Where Needed*: Add `client:load` to make specific components interactive.
- <u>SEO Friendly</u>: Search engines love fast, static HTML.

> "Astro Islands are the secret to achieving 100/100 on Lighthouse while still using your favorite UI frameworks." - Lorem Ipsum

```html
<MyReactComponent client:visible />
```
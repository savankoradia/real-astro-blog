---
title: Combining React Context with Astro
description: How to correctly share state across your interactive islands.
pubDate: 2026-03-19
category: React
authorId: alice
---

# Combining React Context with Astro

To use React Context in Astro, you must wrap your components inside a single React island.

## The Problem

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa.

## The Solution

You need a wrapper component. This ensures the **React Context** is preserved properly across the tree.

- Ensure <u>all providers</u> are housed in the same file.
- Export the newly wrapped component.
- Import it into your `.astro` file and pass the required props.

> Remember: Astro Islands isolate state by default! Keep context providers together.
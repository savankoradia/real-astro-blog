# Real Astro Blog Theme

A blazing fast, highly customizable blog template built with Astro, React, and Tailwind CSS.

## 🚀 Getting Started

To create a new Astro project using this theme, run the following command in your terminal.

```sh
npm create astro@latest my-blog-project -- --template savankoradia/real-astro-blog
```

Next, navigate into your new project directory and start the development server:

```sh
cd my-blog-project
npm install
npm run dev
```

## 🚀 Project Structure

Inside of your Astro project, you'll see the following folders and files:

```text
/
├── public/                # Static assets (images, icons, etc.)
├── src/
│   ├── components/        # Reusable Astro and React components (Navbar, Footer, Cards)
│   ├── content/           # Your markdown content collections
│   │   ├── blog/          # Blog post markdown files
│   │   └── writers/       # Author profile markdown files
│   ├── layouts/           # Global layout components wrapping your pages
│   ├── pages/             # Dynamic and static routing (Blog, Categories, Contact, etc.)
│   ├── styles/            # Global CSS and Markdown typography styles
│   └── config.ts          # Central configuration file for the site
└── package.json
```

Astro looks for `.astro` or `.md` files in the `src/pages/` directory. Each page is exposed as a route based on its file name.

There's nothing special about `src/components/`, but that's where we like to put any Astro/React/Vue/Svelte/Preact components.

Any static assets, like images, can be placed in the `public/` directory.

## 🧞 Commands

All commands are run from the root of the project, from a terminal:

| Command                   | Action                                           |
| :------------------------ | :----------------------------------------------- |
| `npm install`             | Installs dependencies                            |
| `npm run dev`             | Starts local dev server at `localhost:4321`      |
| `npm run build`           | Build your production site to `./dist/`          |
| `npm run preview`         | Preview your build locally, before deploying     |
| `npm run astro ...`       | Run CLI commands like `astro add`, `astro check` |
| `npm run astro -- --help` | Get help using the Astro CLI                     |

## 👀 Want to learn more?

Feel free to check [Astro's documentation](https://docs.astro.build) or jump into [Astro's Discord server](https://astro.build/chat).

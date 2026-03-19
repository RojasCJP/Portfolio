# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a personal portfolio website built with Astro 6.x and Tailwind CSS 4.x. It's a static site showcasing professional background, skills, and personal interests.

## Development Commands

```bash
# Install dependencies
npm install

# Start development server (runs on port 4321, accessible via network)
npm run dev

# Build for production (outputs to dist/)
npm run build

# Preview production build locally
npm run preview
```

## Docker Support

```bash
# Run development server in Docker
docker-compose up
```

## Architecture

**Framework:** Astro 6.x with TypeScript (strict mode)

**Styling:** Tailwind CSS 4.x via `@tailwindcss/vite` plugin. The CSS entry point is `src/styles/global.css` which uses `@import "tailwindcss"`.

**Project Structure:**
- `src/pages/` - File-based routing. `index.astro` is the homepage.
- `src/components/` - Reusable Astro components (e.g., `AboutMe.astro`, `Welcome.astro`)
- `src/layouts/` - Page layout wrappers (`Layout.astro` provides the base HTML structure)
- `src/assets/` - Images and assets processed by Astro (includes photos and SVGs)
- `public/` - Static files served directly (favicons)

**Key Patterns:**
- Components use `.astro` files with frontmatter imports for type safety
- Images in `src/assets/` are imported and Astro handles optimization via `.src` property
- The `Layout.astro` component wraps all pages and provides the base HTML structure including meta tags and favicon links

## Configuration

- `astro.config.mjs` - Astro configuration with Tailwind Vite plugin
- `tsconfig.json` - Extends `astro/tsconfigs/strict`
- Node.js >= 22.12.0 required

## VSCode Integration

The `.vscode/` directory includes:
- Recommended extension: `astro-build.astro-vscode`
- Launch configuration for debugging the dev server

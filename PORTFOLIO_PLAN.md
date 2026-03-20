# Portfolio Improvement Plan

## Current State Analysis

**Completed:**
- AboutMe section with photo grid and professional background
- Basic Astro + Tailwind CSS setup
- Docker support for development

**Interests to Incorporate:**
- AI news and developments
- Data analytics

---

## Phase 1: Core Structure & Navigation

### 1.1 Navigation Component
**File:** `src/components/Navigation.astro`

Create a sticky navigation bar with links to:
- Home / About (existing)
- AI News (new section)
- Data Analytics (new section)
- Contact

**Features:**
- Mobile-responsive hamburger menu
- Smooth scroll to sections
- Active state highlighting

### 1.2 Layout Updates
**File:** `src/layouts/Layout.astro`

- Add Navigation component to layout
- Update page title to be dynamic (passed as prop)
- Add meta description for SEO
- Consider dark mode toggle (optional but nice)

---

## Phase 2: AI News Section

### 2.1 AI News Component
**File:** `src/components/AINews.astro`

**Content Ideas:**
- Curated list of recent AI developments you're following
- Categories: LLMs, AI Tools, Research Papers, Industry News
- Each news item could have:
  - Title
  - Brief summary (your take)
  - Source link
  - Date
  - Tag/category

**Implementation Options:**

**Option A: Static Content (Recommended for MVP)**
- Hardcode news items in the component
- Easy to update manually
- No external dependencies

**Option B: RSS/API Integration (Future enhancement)**
- Fetch from AI news sources (MIT Tech Review, AI Twitter accounts, arXiv)
- Requires API keys or RSS parsing
- Could use server-side rendering with Astro

### 2.2 AI News Page/Section
**File:** `src/pages/ai-news.astro` or section in index

- Dedicated page or section showcasing AI interests
- Could include:
  - "What I'm Reading" subsection
  - "Tools I'm Experimenting With" subsection
  - Personal commentary on AI trends

---

## Phase 3: Data Analytics Section

### 3.1 Data Analytics Component
**File:** `src/components/DataAnalytics.astro`

**Content Ideas:**
- Showcase data projects you've worked on
- Interactive or static visualizations
- Skills/tools showcase (Python, Pandas, SQL, etc.)

**Implementation Options:**

**Option A: Static Project Showcase**
- Cards for each data project
- Screenshots of dashboards/visualizations
- Links to GitHub repos or live demos
- Tech stack tags

**Option B: Interactive Visualizations**
- Use libraries like:
  - `chart.js` or `recharts` (if using React components)
  - `d3.js` for custom visualizations
  - Observable Plot or Vega-Lite
- Embed interactive charts showing sample data

### 3.2 Sample Data Visualization
**Idea:** Create a visualization of:
- Your skills/experience timeline
- Technologies you use (radar chart or bar chart)
- GitHub contribution-style heatmap of your learning/coding
- Tennis stats (since you mentioned playing tennis) - fun personal touch

---

## Phase 4: Projects Section

### 4.1 Projects Component
**File:** `src/components/Projects.astro`

**Structure:**
- Grid of project cards
- Each card includes:
  - Project title
  - Description
  - Tech stack tags
  - Links (GitHub, live demo)
  - Screenshot/mockup

**Projects to Feature:**
- Professional projects (TELUS International work, if shareable)
- Personal projects
- Data analysis projects
- Any AI-related experiments

---

## Phase 5: Contact Section

### 5.1 Contact Component
**File:** `src/components/Contact.astro`

**Content:**
- Professional email
- LinkedIn profile link
- GitHub profile link
- Optional: Contact form (can use formspree or similar)

---

## Phase 6: Polish & Enhancements

### 6.1 Hero Section
**File:** `src/components/Hero.astro` (replace Welcome.astro)

- Create a compelling hero section
- Brief tagline
- Call-to-action buttons (View Projects, Contact Me)
- Subtle animation or gradient background

### 6.2 Footer
**File:** `src/components/Footer.astro`

- Copyright
- Quick links
- Social links
- Built with Astro + Tailwind badge

### 6.3 Animations & Interactions
- Scroll-triggered fade-in animations (use Intersection Observer or AOS library)
- Hover effects on cards and buttons
- Smooth scrolling

### 6.4 SEO & Performance
- Add Open Graph meta tags
- Create sitemap
- Optimize images (already in assets/)
- Add structured data (JSON-LD)

---

## Phase 7: Content Strategy

### 7.1 AI News Content
Create a system for keeping AI news updated:

**Weekly/Monthly Update Workflow:**
1. Keep a running list of interesting AI developments
2. Write 2-3 sentence summaries with your perspective
3. Update the component with new items
4. Consider adding a "Last Updated" timestamp

**Content Buckets:**
- Large Language Models (Claude, GPT, Gemini, etc.)
- AI Tools & Productivity
- AI in Software Development
- Research Papers Worth Reading
- Industry Applications

### 7.2 Data Analytics Content
- Document 2-3 data projects with:
  - Problem statement
  - Approach/methodology
  - Tools used
  - Key findings
  - Visualizations

---

## Technical Implementation Notes

### Dependencies to Consider
```json
{
  "dependencies": {
    "astro": "^6.0.5",
    "@tailwindcss/vite": "^4.2.2",
    "tailwindcss": "^4.2.2",
    // Optional for charts:
    "chart.js": "^4.x",
    // Optional for animations:
    "aos": "^2.x"
  }
}
```

### Component Architecture
```
src/
├── components/
│   ├── Navigation.astro
│   ├── Hero.astro (replaces Welcome.astro)
│   ├── AboutMe.astro (existing - keep)
│   ├── AINews.astro
│   ├── DataAnalytics.astro
│   ├── Projects.astro
│   ├── Contact.astro
│   └── Footer.astro
├── layouts/
│   └── Layout.astro (update with Navigation)
├── pages/
│   └── index.astro (compose all sections)
├── styles/
│   └── global.css (existing)
└── assets/
    └── (existing photos)
```

### Styling Guidelines
- Use Tailwind's utility classes consistently
- Create custom color palette if needed (AI-themed: blues/purples)
- Maintain responsive design (mobile-first)
- Keep consistent spacing (use Tailwind's spacing scale)

---

## Priority Order (Suggested)

1. **Navigation + Layout updates** - Foundation for multi-section site
2. **Hero section** - First impression matters
3. **AI News section** - Showcase your interest
4. **Projects section** - Professional credibility
5. **Data Analytics section** - Technical depth
6. **Contact section** - Enable connections
7. **Footer** - Complete the page
8. **Polish** - Animations, SEO, performance

---

## Future Enhancements (Post-MVP)

- **Blog**: Write articles about AI/data topics
- **Newsletter**: Curated AI news subscription
- **Dark mode**: Toggle between light/dark themes
- **RSS feed**: For your own content
- **Analytics**: Track visitor engagement
- **CMS integration**: Use Astro Content Collections for easier content management
- **API integration**: Live GitHub stats, latest AI papers from arXiv

---

## Questions to Consider

1. Do you want a single-page scrolling site or separate pages for AI News/Data Analytics?
2. Do you have existing data projects to showcase, or should we create sample visualizations?
3. Would you prefer to manually curate AI news, or should we explore automated feeds?
4. Any specific color scheme preference? (Currently using blue/purple gradients)
5. Do you want to include a downloadable resume/CV?

---

## Next Steps

1. Review this plan and decide on priorities
2. Choose between single-page vs. multi-page approach
3. Gather content for AI News section (list of topics you follow)
4. Identify data projects to showcase
5. Start with Phase 1 (Navigation) and work through sequentially

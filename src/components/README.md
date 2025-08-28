# Component System Documentation

## Architecture Overview

This project uses a modular component system organized by function and reusability. Components are categorized into three main types:

### 1. Layout Components (`/layout`)
Structural components that define page layout and organization.
- **Header.astro** - Site navigation and branding
- **Footer.astro** - Site footer with links and contact info
- **Layout.astro** - Main page wrapper with SEO and global styles
- **Section.astro** - Reusable section container with consistent spacing

### 2. UI Components (`/ui`)
Reusable interface elements that can be used across different contexts.
- **Button.astro** - Styled buttons with variants (primary, secondary, CTA)
- **Card.astro** - Content cards with image/text layouts
- **Form.astro** - Contact and quote forms
- **Icon.astro** - SVG icon wrapper with standardized sizing
- **Modal.astro** - Overlay modals for forms/content

### 3. Content Components (`/content`)
Specialized components for specific content types.
- **Hero.astro** - Hero sections with different layouts
- **ServiceCard.astro** - Insurance service display cards
- **Testimonial.astro** - Customer testimonial components
- **QuoteForm.astro** - Insurance quote request form
- **ContactInfo.astro** - Contact details display

## Design System

### Colors (from original site analysis)
- **Primary Blue**: #1a3d6d
- **Secondary Gray**: #3c3a47  
- **Accent Blue**: #2273ad
- **White**: #ffffff
- **Light Gray**: #f8f9fa

### Typography
- **Headings**: Bebas Neue (fallback: Arial, sans-serif)
- **Body**: Roboto (fallback: system-ui, sans-serif)  
- **Secondary**: Poppins (fallback: system-ui, sans-serif)

### Spacing Scale
Using Tailwind CSS spacing scale:
- **xs**: 0.5rem (8px)
- **sm**: 1rem (16px)
- **md**: 1.5rem (24px)
- **lg**: 2rem (32px)
- **xl**: 3rem (48px)

## Component Usage

### Props Convention
All components should accept standard props:
- `class` - Additional CSS classes
- `id` - Element ID for targeting
- Component-specific props documented in each file

### Example Usage

```astro
---
import Layout from '../components/layout/Layout.astro';
import Hero from '../components/content/Hero.astro';
import ServiceCard from '../components/content/ServiceCard.astro';
---

<Layout title="Muscle Car Insurance">
  <Hero 
    title="Protect Your Classic Ride"
    subtitle="Specialized insurance for muscle cars and classics"
    buttonText="Get Quote"
    buttonHref="/quote"
    backgroundImage="/images/hero-bg.jpg"
  />
  
  <ServiceCard 
    title="Classic Car Coverage"
    description="Comprehensive protection for vintage vehicles"
    icon="car"
    href="/classic-car-insurance"
  />
</Layout>
```

## File Structure

```
src/
├── components/
│   ├── layout/
│   │   ├── Header.astro
│   │   ├── Footer.astro
│   │   ├── Layout.astro
│   │   └── Section.astro
│   ├── ui/
│   │   ├── Button.astro
│   │   ├── Card.astro
│   │   ├── Form.astro
│   │   ├── Icon.astro
│   │   └── Modal.astro
│   ├── content/
│   │   ├── Hero.astro
│   │   ├── ServiceCard.astro
│   │   ├── Testimonial.astro
│   │   ├── QuoteForm.astro
│   │   └── ContactInfo.astro
│   └── README.md
├── assets/
│   ├── images/
│   └── icons/
├── styles/
│   ├── global.css
│   └── components/
└── data/
    ├── navigation.json
    ├── services.json
    └── testimonials.json
```

## Development Guidelines

1. **Reusability First** - Design components to be reused across multiple pages
2. **Props Validation** - Document required and optional props in component comments
3. **Accessibility** - Include proper ARIA labels and semantic HTML
4. **Performance** - Optimize images and minimize CSS/JS where possible
5. **Responsive Design** - All components should work on mobile and desktop

## Data Management

Static data is stored in `/src/data/` as JSON files:
- **navigation.json** - Menu items and site navigation
- **services.json** - Insurance services and features  
- **testimonials.json** - Customer testimonials and reviews

## Next Steps

1. Complete Puppeteer setup for visual reference screenshots
2. Download and optimize original site images
3. Build core layout components (Header, Footer, Layout)
4. Create UI component library (Button, Card, Form, etc.)
5. Develop content-specific components
6. Implement responsive design and mobile optimization
7. Add SEO meta tags and structured data
8. Set up build pipeline and deployment process
# Muscle Car Insurance Website - Claude Instructions

## Deployment & Hosting
- **Primary Hosting**: Netlify (connected to GitHub repository)
- **Repository**: https://github.com/MCERQUA/musclecarinsurance.com
- **Deployment Method**: Automatic deployment from GitHub commits
- **Development Environment**: Localhost ONLY for diagnostics and testing purposes
- **Production Access**: Via Netlify deployment URL (not localhost)

## Development Guidelines
- Use localhost (`npm run dev`) ONLY for local diagnostics and development testing
- All production changes should be committed to GitHub and deployed via Netlify
- Never rely on localhost for production access or user testing
- Always kill local development server after diagnostics are complete

## Project Structure
- Astro static site generator with Tailwind CSS
- Modular component architecture (layout/ui/content separation)
- Real content from original musclecarinsurance.com
- PDF design reference implemented with professional styling
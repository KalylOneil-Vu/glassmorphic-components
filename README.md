# Glassmorphic Components Showcase

A modern, interactive component library featuring 25+ beautiful glassmorphic UI components with live editing, customization, and cloud storage.

## Live Demo

**🌐 [View Live Site](https://glassmorphic-components-o055lzqgr-kjs-projects-a1c863a6.vercel.app)**

## Features

### 🎨 Component Library
- **25+ Pre-built Components**: Cards, buttons, modals, navigation, alerts, progress bars, and more
- **Glassmorphic Design**: Frosted glass effect with backdrop blur and transparency
- **Live Preview**: See components against custom backgrounds
- **One-Click Copy**: Copy HTML and CSS code instantly

### ✨ Customization System
- **Edit Any Component**: Click "Edit" to customize text, colors, and content
- **Live Editor**: Split-panel editor with real-time preview
- **Save to Projects**: Store customized components in the cloud
- **Project Management**: Edit, copy, and delete saved projects

### 🛠️ Custom Component Builder
- **Create From Scratch**: Build your own glassmorphic components
- **Template System**: Use `{{fieldName}}` syntax for dynamic content
- **Custom CSS**: Add your own styles
- **Reusable Components**: Save to your personal library

### ☁️ Cloud Storage
- **Supabase Integration**: All projects sync to cloud database
- **Anonymous Users**: No login required, browser-based user identification
- **Data Persistence**: Access your work from anywhere
- **Automatic Fallback**: Uses localStorage if database unavailable

### 🎯 User Experience
- **Universal Background Toggle**: Show/hide backgrounds globally (enabled by default)
- **Responsive Design**: Works on all screen sizes
- **Fast Performance**: Optimized rendering and caching
- **No Dependencies**: Pure HTML, CSS, and vanilla JavaScript

## Tech Stack

- **Frontend**: HTML5, CSS3, Vanilla JavaScript
- **Database**: [Supabase](https://supabase.com) (PostgreSQL)
- **Hosting**: [Vercel](https://vercel.com)
- **Design**: Glassmorphism with backdrop-filter effects

## Project Structure

```
glassmorphic-components/
├── index.html              # Main application file
├── hud-showcase.html       # Copy of index.html
├── background.jpg          # Background image for demos
├── supabase-schema.sql     # Database schema
├── vercel.json            # Vercel configuration
└── README.md              # This file
```

## Database Schema

The application uses two main tables:

- **projects**: Stores user-customized component projects
- **custom_components**: Stores user-created custom components

Both tables use Row Level Security (RLS) with anonymous user support.

## Local Development

1. Clone the repository:
```bash
git clone https://github.com/KalylOneil-Vu/glassmorphic-components.git
cd glassmorphic-components
```

2. Open `index.html` in your browser:
```bash
# Using a simple HTTP server
python -m http.server 8000
# Then visit http://localhost:8000
```

## Deployment

### Vercel

The project is configured for Vercel deployment:

```bash
vercel --prod
```

### Supabase Setup

1. Create a Supabase project
2. Run the SQL from `supabase-schema.sql` in the SQL Editor
3. Update the Supabase credentials in `index.html`:
   - `SUPABASE_URL`
   - `SUPABASE_ANON_KEY`

## Component Categories

- **Cards**: Small, medium, large cards with various layouts
- **Buttons**: Primary, icon, and action buttons
- **Navigation**: Pills, tabs, and navigation components
- **Progress**: Linear and circular progress indicators
- **Timeline**: Vertical timeline with status indicators
- **Stepper**: Multi-step progress indicator
- **Badges & Tags**: Small status indicators and labels
- **Alerts**: Info, success, and warning notifications
- **Modals**: Standard, image, and gallery modals

## Browser Support

- Chrome/Edge (latest)
- Firefox (latest)
- Safari (latest)
- Requires support for `backdrop-filter` CSS property

## Contributing

Contributions are welcome! Feel free to:
- Report bugs
- Suggest new components
- Submit pull requests
- Improve documentation

## License

This project is open source and available for personal and commercial use.

## Credits

Built with [Claude Code](https://claude.com/claude-code)

---

**Enjoy building beautiful glassmorphic UIs! ✨**

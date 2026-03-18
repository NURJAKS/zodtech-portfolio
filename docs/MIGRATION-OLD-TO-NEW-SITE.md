# Migration: Old Site → New Site (Replace Live Site)

Use this checklist to move all metadata, assets, and config from the **current live site** (old) into the **new site**, then replace the old site so promotion and SEO keep working.

---

## 1. Copy all assets to the new site

Copy these files/folders from the old site into the same paths in the new site:

| Asset | Path | Used for |
|-------|------|----------|
| Logo (favicon) | `assets/LOGO.png` | Favicon, JSON-LD logo/image |
| Open Graph image | `assets/images/og-1200x630.png` | Social previews (og:image, twitter:image) |
| Social icons | `assets/instagram.png`, `assets/whatsapp.png` | Footer/contact links |
| Any other images | `assets/` (full folder) | Pages, backgrounds, etc. |

**Check:** After copy, all image URLs like `https://zodtech.kz/assets/...` must resolve on the new site.

---

## 2. Copy metadata into the new site’s HTML

On **every page** of the new site, set (or keep) the same values you have on the old site.

### Main page (e.g. `index.html`)

- **Title:** `AI-Powered Automation & Business Processes | Zodtech`
- **Meta description:** `Automation of business processes, CRM, and AI assistants in Kazakhstan. Websites and bots. Free consultation.`
- **Meta keywords:** `business process automation, CRM, AI assistants, Zodtech, Zodtek, Zotech, Kazakhstan, automation, web development, chatbots, Зодтеч, Зодтек`
- **Meta author:** `Zodtech`
- **Meta robots:** `index, follow`
- **Google Search verification:**  
  `<meta name="google-site-verification" content="1y1qFU0MxXQ3Mxpehmz9vP-Fec_bjuVvZOZDJzhSpgs">`
- **Canonical:** `https://zodtech.kz/` (or the exact URL of that page)
- **Favicon:**  
  `<link rel="icon" type="image/png" href="https://zodtech.kz/assets/LOGO.png">`

### Open Graph (all pages)

- `og:type` = `website`
- `og:url` = exact page URL (e.g. `https://zodtech.kz/`, `https://zodtech.kz/services/`)
- `og:title` = page title
- `og:description` = page description
- `og:image` = `https://zodtech.kz/assets/images/og-1200x630.png`
- `og:image:width` = `1200`, `og:image:height` = `630`
- `og:locale` = `en_US`
- `og:site_name` = `Zodtech`

### Twitter Card (all pages)

- `twitter:card` = `summary_large_image`
- `twitter:url`, `twitter:title`, `twitter:description`, `twitter:image` = same as OG (image = `https://zodtech.kz/assets/images/og-1200x630.png`)

### JSON-LD (main page only)

Keep the same `ProfessionalService` schema so search and rich results don’t break:

- **name:** Zodtech  
- **alternateName:** Zodtek, Zotech, Зодтеч, Zodtech.kz  
- **url:** https://zodtech.kz/  
- **logo / image:** https://zodtech.kz/assets/LOGO.png  
- **description:** (current site description)  
- **telephone:** +77002174701  
- **email:** info@zodtech.kz  
- **address:** KZ  
- **sameAs:** Instagram, Telegram, LinkedIn, Facebook (current URLs)  
- **contactPoint:** same phone, email, languages, areaServed  

Copy the exact `<script type="application/ld+json">...</script>` block from the old `index.html` into the new site’s main page.

---

## 3. Preserve URL structure (or redirect)

- **If the new site uses the same URLs** (e.g. `/`, `/services/`, `/services/bolt/`, etc.): no redirects needed; just deploy the new site over the old.
- **If any URL changes:** add 301 redirects on the server (e.g. in `.htaccess`) from old URL → new URL so that:
  - `/projects/...` → `/services/...` (already on old site)
  - `/services/clickup/` → `/services/crm-sales-automation/` (already on old site)
  - Any other old path → new path

---

## 4. Server config to carry over

Copy or merge **`.htaccess`** rules into the new site’s server config (if you use Apache):

- Redirect `projects/*` → `services/*` (301)
- Redirect `services/clickup` → `services/crm-sales-automation` (301)

If you use Nginx or another server, recreate these redirects there.

---

## 5. Third-party / external links

- **Cal.com (or other booking):** keep the same booking link/embed on the new site.
- **Social links:** keep the same (Instagram, WhatsApp, Telegram, LinkedIn, Facebook) in footer and JSON-LD.
- **Framer CDN / scripts:** only if the new site still uses them; otherwise remove.

---

## 6. After you replace the old site

1. **Test all important URLs** (home, /services/, each service page) — check title, meta, favicon, OG image.
2. **Test one shared link** (e.g. paste `https://zodtech.kz/` in Telegram/Facebook) — preview must show correct image and text.
3. **Google Search Console:** domain stays the same, so verification meta tag is enough; optionally request indexing for main URLs.
4. **Optional:** add `sitemap.xml` and `robots.txt` on the new site for better crawling.

---

## Quick checklist (before go-live)

- [ ] All assets copied to new site (`assets/LOGO.png`, `og-1200x630.png`, icons).
- [ ] Every page has correct title, description, canonical.
- [ ] Every page has og:* and twitter:* with `og-1200x630.png`.
- [ ] Main page has Google verification meta and JSON-LD.
- [ ] Favicon link points to `assets/LOGO.png`.
- [ ] .htaccess (or server) redirects: projects→services, clickup→crm-sales-automation.
- [ ] Booking and social links work.
- [ ] Test shared link preview and key URLs after deploy.

Once this is done, you can deploy the new site in place of the old one; promotion and SEO will continue to work because metadata, assets, and redirects are preserved.

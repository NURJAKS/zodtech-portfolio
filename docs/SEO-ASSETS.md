# SEO assets checklist

## Favicon

- **Current:** Main pages use dedicated favicons from the same logo: `assets/favicon-32.png` (32×32) and `assets/favicon-48.png` (48×48), linked in `index.html` and `services/index.html` with `rel="icon"` and `sizes`.
- **Source:** Generated from `assets/LOGO.png`. To regenerate (e.g. after logo change), resize LOGO.png to 32×32 and 48×48 and overwrite the favicon files.

## Open Graph image (social preview)

- **Expected file:** `assets/images/og-1200x630.png`
- **Size:** 1200×630 px (recommended for Facebook, LinkedIn, Twitter). Already set in meta tags as `og:image:width` and `og:image:height`.
- **Usage:** All pages reference `https://zodtech.kz/assets/images/og-1200x630.png` in `og:image` and `twitter:image`.

### Рекомендации по og-картинке

- **Размер:** 1200×630 px (уже задан в мета-тегах).
- **Что разместить:** логотип Zodtech, короткий слоган (например «AI automation for business» или «Turnkey automation • Kazakhstan»). Желательно контрастный фон, без мелкого текста.
- **Файл:** замените или создайте картинку по этим рекомендациям и сохраните как `assets/images/og-1200x630.png`.

## JSON-LD

- Logo and image in the ProfessionalService schema point to `https://zodtech.kz/assets/LOGO.png` (existing asset). No change needed unless you add a dedicated schema image.

## Верификация поисковиков (Яндекс, Bing)

- **Google:** уже подключён через `meta name="google-site-verification"` в `index.html`.
- **Яндекс и Bing:** в `index.html` и `services/index.html` в `<head>` добавлены закомментированные мета-теги:
  - Яндекс: `<!-- Yandex: <meta name="yandex-verification" content="..."> -->`
  - Bing: `<!-- Bing: <meta name="msvalidate.01" content="..."> -->`
- **Как включить:** после добавления сайта в [Яндекс.Вебмастер](https://webmaster.yandex.ru/) и [Bing Webmaster Tools](https://www.bing.com/webmasters) скопируйте код верификации в атрибут `content="..."` соответствующего тега и раскомментируйте строку (удалите `<!--` и `-->`).

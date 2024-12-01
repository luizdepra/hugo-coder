# Configurations

- [Configurations](#configurations)
  - [About Hugo Configurations](#about-hugo-configurations)
    - [Commenting Systems](#commenting-systems)
      - [Disqus](#disqus)
      - [Commento](#commento)
      - [Utterances](#utterances)
      - [Giscus](#giscus)
      - [Telegram](#telegram)
      - [Cusdis](#cusdis)
      - [Mastodon](#mastodon)
  - [Syntax Highlight](#syntax-highlight)
  - [Theme Parameters](#theme-parameters)
    - [Social Icons Configuration](#social-icons-configuration)
    - [Menu Items Configurations](#menu-items-configurations)
    - [CSP](#csp)
  - [Complete Example](#complete-example)
  - [Front Matter](#front-matter)
    - [Posts](#posts)

## About Hugo Configurations

This theme supports:

* [Analytics](/docs/analytics.md)

* Commenting Systems
  * [Disqus](https://disqus.com/)
  * [Commento](https://commento.io/)
  * [Utterances](https://utteranc.es/)
  * [Giscus](https://giscus.app/)
  * [Cusdis](https://cusdis.com/)
  * [Telegram](https://comments.app/)

### Commenting Systems

Comments are displayed within post pages, but can be disabled with `disableComments` front-matter.

#### Disqus

Follow [these steps](https://gohugo.io/content-management/comments/#configure-disqus).

#### Commento

```toml
[params]
  commentoURL = "https://cdn.commento.io" # Replace if you use a custom domain
```

#### Utterances

```toml
[params.utterances]
  repo = "" # https://utteranc.es/#heading-repository
  issueTerm = "" # https://utteranc.es/#heading-mapping
  label = "" # https://utteranc.es/#heading-issue-label
  theme = "" # https://utteranc.es/#heading-theme
```

#### Giscus

```toml
[params.giscus] # https://giscus.app
  repo = ""
  repoID = ""
  category = ""
  categoryID = ""
  mapping = ""
  term = ""
  strict = ""
  reactionsEnabled = ""
  emitMetadata = ""
  inputPosition = ""
  theme = ""
  lang = ""
  loading = ""
```

#### Telegram

```toml
[params.telegram] # https://comments.app/
  siteID = ""
  limit = ""
  height = ""
  color = ""
  dislikes = ""
  outlined = ""
  colorful = ""
  dark = ""
```

#### Cusdis

```toml
[params.cusdis] # https://cusdis.com
  data_app_id = ""
```

#### Mastodon

```toml
[params.mastodon]
  host = "" # Address of your Mastodon instance
  username = "" # Your username
  statusID = "" # ID os the status (post) that comments should be related
  purifyCDN = "" # CDN address of pointing to a Purify package

```

## Syntax Highlight

The theme uses the Goldmark syntax highlight system. GitHub light and dark are set as the default styles. To choose a different style, make sure `noClasses` is not set to false (default is true) and add to your `hugo.toml`:

```
[markup.highlight]
style = "monokai"
```

All `style` are available [here](https://xyproto.github.io/splash/docs/all.html).

Alternatively, it is possible to use custom styles with generated CSS files. See [here](https://gohugo.io/content-management/syntax-highlighting/#generate-syntax-highlighter-css).

## Theme Parameters

These are all the parameters used by `hugo-coder` theme.

| Name                          | Type   | Required | Description                                      | Default                          | Example                                          |
| ----------------------------- | ------ | -------- | ------------------------------------------------ | -------------------------------- | ------------------------------------------------ |
| author                        | string | Yes      | Author name.                                     |                                  | `"John Doe"`                                     |
| info                          | string | Yes      | An headline, job title or similar.               |                                  | `"Full Stack Developer"`                         |
| description                   | string | Yes      | Description of the site.                         |                                  | `"John Doe's personal website"`                  |
| keywords                      | string | Yes      | Site keywords.                                   |                                  | `"blog,developer,personal"`                      |
| avatarURL                     | string | No       | Photo of the author.                             |                                  | `"images/avatar.jpg"`                            |
| gravatar                      | string | No       | Gravatar photo of the author                     |                                  | `"john.doe@example.com"`                         |
| fediverseCreator              | string | No       | The author's fediverse handle.                   |                                  | `"@johndoe@example.com"`                         |
| faviconSVG                    | string | No       | Custom path to a SCG favicon.                    | `"/img/favicon.svg"`             | `"/img/favicon.svg"`                             |
| favicon_32                    | string | No       | Custom path to a 32x32 favicon.                  | `"/img/favicon-32x32.png"`       | `"/img/favicon-32x32.png"`                       |
| favicon_16                    | string | No       | Custom path to a 16x16 favicon.                  | `"/img/favicon-16x16.png"`       | `"/img/favicon-16x16.png"`                       |
| touchIcon                     | string | No       | Custom path to an apple-touch-icon                      | `"/images/apple-touch-icon.png"` | `"/images/apple-touch-icon.png"`                 |
| mask_icon                     | string | No       | Custom path to a mask-icon                      | `"/images/safari-pinned-tab.svg"` | `"/images/safari-pinned-tab.svg"`                 |
| mask_icon_color                     | string | No       | Custom color for mask-icon color                      | `"#5bbad5"` | `"#5bbad5"`                 |
| since                         | string | No       | Date shown in the footer before now year         |                                  | `"2020"`                                         |
| maxSeeAlsoItems               | number | No       | Series see also post count                       | `5`                              | `10`                                             |
| commit                        | string | No       | Show the last git commit in the footer           |                                  | `"https://github.com/luizdepra/hugo-coder/tree/"`|
| rtl                           | bool   | No       | Enable the Right To Left mode.                   | `false`                          | `true` or `false`                                |
| math                          | bool   | No       | Enable MathJax Module and add JS into your site. | `false`                          | `true` or `false`                                |
| katex                         | bool   | No       | Enable KaTeX for all content types.              | `false`                          | `true` or `false`                                |
| colorScheme                   | string | No       | Specify light/dark colorscheme                   | `"auto"`                         | `"auto"` or `"light"` or `"dark"`                |
| hideColorSchemeToggle         | bool   | No       | If true, hides the color scheme toggle            | `false`                          | `true` or `false`                                |
| customCSS                     | list   | No       | Add extra CSS files to the website.              | []                               | `["css/extra-style.css"]`                        |
| customSCSS                    | list   | No       | Add extra SCSS files to the website.             | []                               | `["scss/extra-style.scss"]`                      |
| customJS                      | list   | No       | Add extra JS files to the website.               | []                               | `["js/extra-script.js"]`                         |
| customRemoteJS                | list   | No       | Add extra remote JS files to the website.        | []                               | `["https://www.example.com/file.js"]`            |
| enableTwemoji                 | bool   | No       | Adds support for Twemoji                         | `false`                          | `true` or `false`                                |
| disableDefaultJsScripts       | bool   | No       | If true, disables default js scripts (coder.js)  | `false`                          | `true` or `false`                                |

### Social Icons Configuration

Social Icons are optional. To use them you will need to set at least all the following required parameters for each icon.

| Configuration  | Type   | Required | Description                              | Example                         |
| -------------- | ------ | -------- | ---------------------------------------- | ------------------------------- |
| name           | string | Yes      | Icon name.                               | `"Github"`                      |
| icon           | string | Yes      | FontAwesome icon classes.                | `"fa-brands fa-github"`         |
| weight         | int    | Yes      | Icon order.                              | `1`                             |
| url            | string | Yes      | URL to redirect.                         | `"https://github.com/johndoe/"` |

An example:

```toml
[[params.social]]
  name = "Github"
  icon = "fa-brands fa-github fa-2x"
  weight = 1
  url = "https://github.com/johndoe/"
[[params.social]]
  name = "Gitlab"
  icon = "fa-brands fa-gitlab fa-2x"
  weight = 2
  url = "https://gitlab.com/johndoe/"
[[params.social]]
  name = "Twitter"
  icon = "fa-brands fa-x-twitter fa-2x"
  weight = 3
  url = "https://twitter.com/johndoe/"
```

### Menu Items Configurations

Menu Items are optional. To use them you will need to set all the following required parameters for each icon.

| Configuration  | Type   | Required | Description                              | Example                         |
| -------------- | ------ | -------- | ---------------------------------------- | ------------------------------- |
| name           | string | Yes      | Menu Item name.                          | `"Posts"`                       |
| weight         | int    | Yes      | Menu Item order.                         | `1`                             |
| url            | string | Yes      | URL to redirect.                         | `"/posts/"`                     |
| class          | string | No       | Menu Item extra class attribute.         | `"menu-item"`                   |
| target         | string | No       | URL target attribute.                    | `"_blank"`                      |
| rel            | string | No       | URL rel attribute.                       | `"alternate"`                   |
| type           | string | No       | URL type attribute.                      | `"application/rss+xml"`         |

An example:

```toml
[[menu.main]]
  name = "Blog"
  weight = 1
  url  = "posts/"
[[menu.main]]
  name = "About"
  weight = 2
  url = "about/"
```

### CSP

CSP stands for [Content Security Policy](https://developers.google.com/web/fundamentals/security/csp). These configurations are optional. To use them you will need to set all the following required parameters. See [here](https://developers.google.com/web/fundamentals/security/csp#policy_applies_to_a_wide_variety_of_resources) for reference.

| Configuration  | Type        | Required | Description | Example                         |
| -------------- | ----------- | -------- | ----------- | ------------------------------- |
| childsrc       | string list | Yes      |             | `["'self'"]`                    |
| fontsrc        | string list | Yes      |             | `["'self'"]`                    |
| formaction     | string list | Yes      |             | `["'self'"]`                    |
| framesrc       | string list | Yes      |             | `["'self'"]`                    |
| imgsrc         | string list | Yes      |             | `["'self'"]`                    |
| objectsrc      | string list | Yes      |             | `["'self'"]`                    |
| stylesrc       | string list | Yes      |             | `["'self'"]`                    |
| scriptsrc      | string list | Yes      |             | `["'self'"]`                    |
| connectsrc     | string list | Yes      |             | `["'self'"]`                    |

An example:

```toml
[params.csp]
  childsrc = ["'self'"]
  fontsrc = [
    "'self'",
    "https://fonts.gstatic.com",
    "https://cdn.jsdelivr.net/"
  ]
  formaction = ["'self'"]
  framesrc = ["'self'"]
  imgsrc = ["'self'"]
  objectsrc = ["'none'"]
  stylesrc = [
    "'self'",
    "'unsafe-inline'",
    "https://fonts.googleapis.com/",
    "https://cdn.jsdelivr.net/"
  ]
  scriptsrc = [
    "'self'",
    "'unsafe-inline'",
    "https://www.google-analytics.com"
  ]
  # connect-src directive – defines valid targets for XMLHttpRequest (AJAX), WebSockets or EventSource
  connectsrc = ["'self'"]
```

## Complete Example

This is a complete configuration example with some recommended values.

```toml
baseurl = "http://www.example.com"
title = "johndoe"
theme = "hugo-coder"
languagecode = "en"
defaultcontentlanguage = "en"


[pagination]
pagerSize = 20

[services]
[services.disqus]
shortname = "yourdiscussshortname"

[markup.highlight]
style = "github-dark"

[params]
  author = "John Doe"
  info = "Full Stack DevOps and Magician"
  description = "John Doe's personal website"
  keywords = "blog,developer,personal"
  avatarurl = "images/avatar.jpg"
  #gravatar = "john.doe@example.com"

  faviconSVG = "/img/favicon.svg"
  favicon_32 = "/img/favicon-32x32.png"
  favicon_16 = "/img/favicon-16x16.png"

  since = 2019

  enableTwemoji = true

  colorScheme = "auto"
  hidecolorschemetoggle = false

  # customCSS = ["css/custom.css"]
  # customSCSS = ["scss/custom.scss"]
  # customJS = ["js/custom.js"]

[taxonomies]
  category = "categories"
  series = "series"
  tag = "tags"
  author = "authors"

# Social links
[[params.social]]
  name = "Github"
  icon = "fa-brands fa-github fa-2x"
  weight = 1
  url = "https://github.com/johndoe/"
[[params.social]]
  name = "Gitlab"
  icon = "fa-brands fa-gitlab fa-2x"
  weight = 2
  url = "https://gitlab.com/johndoe/"
[[params.social]]
  name = "Twitter"
  icon = "fa-brands fa-x-twitter fa-2x"
  weight = 3
  url = "https://twitter.com/johndoe/"

# Menu links
[[menu.main]]
  name = "Blog"
  weight = 1
  url  = "posts/"
[[menu.main]]
  name = "About"
  weight = 2
  url = "about/"
```

## Front Matter

Hugo documentation: https://gohugo.io/content-management/front-matter

This theme includes one content type:

* [Posts](#posts), useful to display blog posts

### Posts

These are the front matter variables used by `hugo-coder` theme.

| Name             | Type   | Required | Description                                        | Default | Example                                                                         |
| ---------------- | ------ | -------- | -------------------------------------------------- | ------- | ------------------------------------------------------------------------------- |
| tags             | list   | No       | Add tag(s) to this post.                           |         | `["Hugo", "Go"]`                                                                |
| categories       | list   | No       | Add categorie(s) to this post.                     |         | `["Hugo", "Go"]`                                                                |
| series           | list   | No       | Add series to this post (used by OpenGraph).       |         | `["Theme Demo"]`                                                                |
| author           | list   | No       | Add author to this post.                           |         | `["John Doe"]`                                                                  |
| externalLink     | string | No       | Link to an external post.                          |         | `"https://github.com/luizdepra/hugo-coder/wiki"`                                |
| featuredImage    | string | No       | Link/path to add an image below post metadata.     |         | `"https://github.com/luizdepra/hugo-coder/blob/master/images/screenshot.png"`   |
| math             | bool   | No       | If true, MathJax is enabled only for this post.    | `false` | `true` or `false`                                                               |
| katex            | bool   | No       | If true, KaTeX is enabled only for this post.      | `false` | `true` or `false`                                                               |
| disableComments  | bool   | No       | If true, comments are disabled.                    | `false` | `true` or `false`                                                               |
| canonicalUrl     | string | No       | Link to override <link rel="canonical"/> in <head> | `false` | `"https://my-company.com/blog/my-blog-post-that-I-repost-without-hurtiong-seo"` |

> "tags", "categories", "series" and "authors" are taxonomies defined in the `hugo.toml` file.

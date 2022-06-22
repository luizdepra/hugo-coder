# Configurations

* [About Hugo Configurations](#about-hugo-configurations)
  * [Analytics](#analytics)
    * [Google Analytics](#google-analytics)
    * [Google Tag Manager](#google-tag-manager)
    * [Fathom Analytics](#fathom-analytics)
    * [Plausible Analytics](#plausible-analytics)
    * [Goat Counter](#goat-counter)
    * [Cloudflare](#cloudflare)
    * [Matomo](#matomo)
    * [Application Insights](#application-insights)
  * [Commenting Systems](#commenting-systems)
    * [Disqus](#disqus)
    * [Commento](#commento)
    * [Utterances](#utterances)
* [Theme Parameters](#theme-parameters)
  * [Social Icons Configuration](#social-icons-configuration)
  * [Menu Items Configurations](#menu-items-configurations)
  * [CSP](#csp)
* [Complete Example](#complete-example)
* [Front Matter](#front-matter)
  * [Posts](#posts)

## About Hugo Configurations

This theme supports:

* Analytics
  * [Google Analytics](https://developers.google.com/analytics)
  * [Google Tag Manager](https://developers.google.com/tag-manager)
  * [Fathom Analytics](https://usefathom.com/)
  * [Plausible Analytics](https://plausible.io/)
  * [Goat Counter](https://www.goatcounter.com/)
  * [Cloudflare](https://www.cloudflare.com/analytics/)
  * [Matomo](https://matomo.org/)
  * [Application Insights](https://azure.com/)
* Commenting Systems
  * [Disqus](https://disqus.com/)
  * [Commento](https://commento.io/)
  * [Utterances](https://utteranc.es/)

### Analytics

#### Google Analytics

Follow [these steps](https://gohugo.io/templates/internal/#configure-google-analytics).

#### Google Tag Manager

```toml
[params.googleTagManager]
    id = "gid"
```

#### Fathom Analytics

```toml
[params.fathomAnalytics]
  siteID = "ABCDE"
  serverURL = "cdn.usefathom.com" # (optionnal) Replace if you use a custom domain
```

#### Plausible Analytics

```toml
[params.plausibleAnalytics]
  domain = "example.com"
  serverURL = "plausible.io" # (optionnal) Replace if you use a custom domain
```

#### Goat Counter

```toml
[params.goatCounter]
  code = "code" # You will access your account at https://[code].goatcounter.com
```

#### Cloudflare

```toml
[params.cloudflare]
    token = "token"
```

#### Matomo

```toml
[params.matomo]
    siteID = "ABCDE"
    serverURL = "analytics.example.com"
```

#### Application Insights

```toml
[params.applicationInsights]
    connectionString = "connectionstring" # https://docs.microsoft.com/en-us/azure/azure-monitor/app/sdk-connection-string
```

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
| favicon_32                    | string | No       | Custom path to a 32x32 favicon.                  | `"/img/favicon-32x32.png"`       | `"/img/favicon-32x32.png"`                       |
| favicon_16                    | string | No       | Custom path to a 16x16 favicon.                  | `"/img/favicon-16x16.png"`       | `"/img/favicon-16x16.png"`                       |
| touchIcon                     | string | No       | Custom path to a touch-icon                      | `"/images/apple-touch-icon.png"` | `"/images/apple-touch-icon.png"`                 |
| since                         | string | No       | Date shown in the footer before now year         |                                  | `"2020"`                                         |
| maxSeeAlsoItems               | number | No       | Series see also post count                       | `5`                              | `10`                                             |
| commit                        | string | No       | Show the last git commit in the footer           |                                  | `"https://github.com/luizdepra/hugo-coder/tree/"`|
| rtl                           | bool   | No       | Enable the Right To Left mode.                   | `false`                          | `true` or `false`                                |
| math                          | bool   | No       | Enable MathJax Module and add JS into your site. | `false`                          | `true` or `false`                                |
| katex                         | bool   | No       | Enable katex for all content types.              | `false`                          | `true` or `false`                                |
| colorScheme                   | string | No       | Specify light/dark colorscheme                   | `"auto"`                         | `"auto"` or `"light"` or `"dark"`                |
| hideColorSchemeToggle         | bool   | No       | If true, hides the color sheme toggle            | `false`                          | `true` or `false`                                |
| customCSS                     | list   | No       | Add extra CSS files to the website.              | []                               | `["css/extra-style.css"]`                        |
| customSCSS                    | list   | No       | Add extra SCSS files to the website.             | []                               | `["scss/extra-style.scss"]`                      |
| customJS                      | list   | No       | Add extra JS files to the website.               | []                               | `["js/extra-script.js"]`                         |
| enableTwemoji                 | bool   | No       | Adds support for Twemoji                         | `false`                          | `true` or `false`                                |

### Social Icons Configuration

Social Icons are optional. To use them you will need to set at least all the following required parameters for each icon.

| Configuration  | Type   | Required | Description                              | Example                         | 
| -------------- | ------ | -------- | ---------------------------------------- | ------------------------------- |
| name           | string | Yes      | Icon name.                               | `"Github"`                      |
| icon           | string | Yes      | ForkAwesome icon classes.                | `"fa fa-github"`                |
| weight         | int    | Yes      | Icon order.                              | `1`                             |
| url            | string | Yes      | URL to redirect.                         | `"https://github.com/johndoe/"` |

An example:

```toml
[[params.social]]
  name = "Github"
  icon = "fa fa-github fa-2x"
  weight = 1
  url = "https://github.com/johndoe/"
[[params.social]]
  name = "Gitlab"
  icon = "fa fa-gitlab fa-2x"
  weight = 2
  url = "https://gitlab.com/johndoe/"
[[params.social]]
  name = "Twitter"
  icon = "fa fa-twitter fa-2x"
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
| prefetchsrc    | string list | Yes      |             | `["'self'"]`                    |

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
  prefetchsrc = ["'self'"]
```

## Complete Example

This is a complete configuration example with some recommended values.

```toml
baseurl = "http://www.example.com"
title = "johndoe"
theme = "hugo-coder"
languagecode = "en"
defaultcontentlanguage = "en"

paginate = 20

pygmentsstyle = "bw"
pygmentscodefences = true
pygmentscodefencesguesssyntax = true

disqusShortname = "yourdiscussshortname"

[params]
  author = "John Doe"
  info = "Full Stack DevOps and Magician"
  description = "John Doe's personal website"
  keywords = "blog,developer,personal"
  avatarurl = "images/avatar.jpg"
  #gravatar = "john.doe@example.com"

  favicon_32 = "/img/favicon-32x32.png"
  favicon_16 = "/img/favicon-16x16.png"

  since = 2019

  enableTwemoji = true

  colorScheme = "auto"
  hidecolorschemetoggle = false

  customCSS = ["css/custom.css"]
  customSCSS = ["scss/custom.scss"]
  customJS = ["js/custom.js"]

[taxonomies]
  category = "categories"
  series = "series"
  tag = "tags"
  author = "authors"

# Social links
[[params.social]]
  name = "Github"
  icon = "fa fa-github fa-2x"
  weight = 1
  url = "https://github.com/johndoe/"
[[params.social]]
  name = "Gitlab"
  icon = "fa fa-gitlab fa-2x"
  weight = 2
  url = "https://gitlab.com/johndoe/"
[[params.social]]
  name = "Twitter"
  icon = "fa fa-twitter fa-2x"
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

| Name             | Type   | Required | Description                                        | Default | Example                                                                       |
| ---------------- | ------ | -------- | -------------------------------------------------- | ------- | ----------------------------------------------------------------------------- |
| tags             | list   | No       | Add tag(s) to this post.                           |         | `["Hugo", "Go"]`                                                              |
| categories       | list   | No       | Add categorie(s) to this post.                     |         | `["Hugo", "Go"]`                                                              |
| series           | list   | No       | Add series to this post (used by OpenGraph).       |         | `["Theme Demo"]`                                                              |
| author           | list   | No       | Add author to this post.                           |         | `["John Doe"]`                                                                |
| externalLink     | string | No       | Link to an external post.                          |         | `"https://github.com/luizdepra/hugo-coder/wiki"`                              |
| featuredImage    | string | No       | Link/path to add an image below post metadata.     |         | `"https://github.com/luizdepra/hugo-coder/blob/master/images/screenshot.png"` |
| math             | bool   | No       | If true, MathJax is enabled only for this post.    | `false` | `true` or `false`                                                             |
| katex            | bool   | No       | If true, katex is enabled only for this post.      | `false` | `true` or `false`                                                             |
| disableComments  | bool   | No       | If true, comments are disabled.                    | `false` | `true` or `false`                                                             |

> "tags", "categories", "series" and "authors" are taxonomies defined in the `config.toml` file.

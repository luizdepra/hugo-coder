![Hugo Coder Logotype](https://github.com/luizdepra/hugo-coder/blob/master/images/logos/logotype-a.png)

A simple and clean blog theme for Hugo.

![](https://github.com/luizdepra/hugo-coder/blob/master/images/screenshot.png)

## How to use this theme

To use `hugo-coder` go through the following steps.

### Download

Clone this repository into your Hugo project.

```
git clone https://github.com/luizdepra/hugo-coder.git themes/coder
```

### Configuration

Add the following lines to your `config.toml`.

```toml
baseurl = "http://www.example.com" # Hostname (and path) to the root.
title = "johndoe" # Site title.
theme = "coder" # Set the theme.
languagecode = "en" # The site’s language code used to generate RSS.
defaultcontentlanguage = "en" # The default content language.

paginate = 20 # Default number of pages per page in pagination.
canonifyurls = true # Enable to turn relative URLs into absolute.

pygmentsstyle = "b2" # Color-theme or style for syntax highlighting.
pygmentscodefences = true # Enable code fence background highlighting.
pygmentscodefencesguesssyntax = true # Enable syntax guessing for code fences without specified language.

disqusShortname = "yourdiscussshortname" # Enable or disable Disqus.

[params] # theme parameters
    author = "John Doe" # Author's name.
    info = "Full Stack DevOps and Magician" # Author's job title or info.
    description = "John Doe's personal website" # Site description.
    keywords = "blog,developer,personal" # Site keywords.
    avatarurl = "images/avatar.jpg" # Contain the path of the optionnal avatar in the static folder.

    footercontent = "Enter a text here." # Add footer content

    # Whether you want to hide copyright and credits in the footer.
    hideCredits = false
    hideCopyright = false

    # Custom CSS
    custom_css = []

    # RTL support
    rtl = false

    # Multilanguage mode
    langseparator = "|" # Separates menus from language selectors when site is multilingual.

# Social links
[[params.social]]
    name = "Github"
    weight = 1
    url = "https://github.com/johndoe/"
[[params.social]]
    name = "Twitter"
    weight = 2
    url = "https://twitter.com/johndoe/"
[[params.social]]
    name = "LinkedIn"
    weight = 3
    url = "https://www.linkedin.com/in/johndoe/"

# Menu links
[[menu.main]]
    name = "Blog"
    weight = 1
    url  = "/posts/"
[[menu.main]]
    name = "About"
    weight = 2
    url = "/about/"
```

You can look at full working [`config.toml`](https://github.com/luizdepra/hugo-coder/blob/master/exampleSite/config.toml) inside the [exampleSite](https://github.com/luizdepra/hugo-coder/tree/master/exampleSite) folder.

#### Multilingual mode

To use multilingual mode, the configuration above needs to be extended by parameters for the specific languages.
Each `language` section overrides default site's parameters when that language is chosen.

```toml
[params]
    langseparator = "|" # separates menus from language selectors.

[languages]
    [languages.en]
        languagename = "English" # The language name to be displayed in the selector.
        title = "John Doe"

        # You can configure the theme parameter for each language. 
        [languages.en.params]
        author = "John Doe"
        info = "Full Stack DevOps and Magician"
        description = "John Doe's personal website"
        keywords = "blog,developer,personal"

        [languages.en.menu] # It is possible to change the menu too.

        [[languages.en.menu.main]]
        name = "About"
        weight = 1.0
        url = "/about/"

        [[languages.en.menu.main]]
        name = "Blog"
        weight = 2.0
        url = "/posts/"


    [languages.pl]
        languagename = "Polski"
        title = "John Doe po polsku"

        [languages.pl.params]
            author = "John Doe"
            description = "Strona domowa John'a Doe"
            keywords = "blog,developer,strona domowa"
            info = "Full Stack DevOps i Magik"

        [languages.pl.menu]

            [[languages.pl.menu.main]]
            name = "O mnie"
            weight = 1.0
            url = "/pl/about/"

            [[languages.pl.menu.main]]
            name = "Blog"
            weight = 2.0
            url = "/pl/posts/"


```

It is possible to force Hugo to render all default language content under the language code with `defaultContentLanguageInSubdir = true`.
In this case, remember to update your menus URLs (i.e. `/en/about/`).

### Build & Test

It is necessary to have `less` and `uglifycss` installed to build and run the demo.
Assuming that already have NodeJS/NPM installed, run `npm install -g less uglifycss`.

To update or generate the minified CSS file:

```
make build
```

To build your site and test, run:

```
hugo server
```

To preview the exampleSite, run

```
make demo
```

The above command copies current state of the theme to exampleSite/themes and starts hugo with hugo serve -D (Go does not support Symlink directories)

### Disqus

Add the following line to your config, ```disqusShortname = "yourdiscussshortname"``` When this is set, all posts are disqus enabled   
You can disable comments for a post by adding the following to your page meta data: ```disable_comments: true```.


## License

Coder is licensed under the [MIT license](https://github.com/luizdepra/hugo-coder/blob/master/LICENSE.md).

## Author

[Luiz de Prá](https://github.com/luizdepra)

## Contributors

- [Gabor Nagy](https://github.com/Aigeruth)
- [Ihor Dvoretskyi](https://github.com/idvoretskyi)
- [Jan Baudisch](https://github.com/flyingP0tat0)
- [Jiri Hubacek](https://github.com/qeef)
- [Khosrow Moossavi](https://github.com/khos2ow)
- [Maikel](https://github.com/mbollemeijer)
- [peterrus](https://github.com/peterrus)
- [Ralf Junghanns](https://github.com/rabbl)
- [tobaloidee](https://github.com/Tobaloidee)
- [Vlad Ionescu](https://github.com/Vlaaaaaaad)
- [Niels Reijn](https://github.com/reijnn)
- [Harry Khanna](https://github.com/hkhanna)
- [rdhox](https://rdhox.io)
- [Chip Senkbeil](https://github.com/chipsenkbeil)
- [Tomasz Wąsiński](https://github.com/wasinski)

## Special Thanks

- Gleen McComb, for his great [article](https://glennmccomb.com/articles/how-to-build-custom-hugo-pagination/) about custom pagination.
- All contributors, for every PR and Issue reported.

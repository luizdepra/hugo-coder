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
languagecode = "en" # The site’s language code.

paginate = 20 # Default number of pages per page in pagination.
canonifyurls = true # Enable to turn relative URLs into absolute.

pygmentsstyle = "b2" # Color-theme or style for syntax highlighting.
pygmentscodefences = true # Enable code fence background highlighting.
pygmentscodefencesguesssyntax = true # Enable syntax guessing for code fences without specified language.

[params] # theme parameters
    author = "John Doe" # Author's name.
    info = "Full Stack DevOps and Magician" # Author's job title or info.
    description = "John Doe's personal website" # Site description.
    keywords = "blog,developer,personal" # Site keywords.

    disqusShortname = "yourdiscussshortname" # Enable or disable Disqus

    # Whether you want to hide copyright and credits in the footer.
    hideCredits = false
    hideCopyright = false

    # Custom CSS
    custom_css = []

    # RTL support
    rtl = false

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

### Build & Test

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
Add the following line to your config,
```disqusShortname = "yourdiscussshortname"``` When this is set, all posts are disqus enabled   
You can disable comments for a post by adding the following to your page meta data.
```disable_comments: true```


## To Do
- Tags, Categories and Series

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

## Special Thanks

- Gleen McComb, for his great [article](https://glennmccomb.com/articles/how-to-build-custom-hugo-pagination/) about custom pagination.
- All contributors, for every PR and Issue reported.

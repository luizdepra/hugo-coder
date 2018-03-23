# hugo-coder

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
theme = "coder" # set the theme

[params] # theme parameters
    author = "John Doe" # author's name
    info = "Full Stack DevOps and Magician" # author's job title or info
    description = "John Doe's personal website" # site description
    keywords = "blog,developer,personal" # site keywords
    
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

## To Do

- Comments (probably not Disqus, sorry)
- Tags, Categories and Series

## License

Coder is licensed under the [MIT license](https://github.com/luizdepra/hugo-coder/blob/master/LICENSE.md).

## Author

[Luiz de Prá](https://luizdepra.com)

## Special Thanks

- Gleen McComb, for his great [article](https://glennmccomb.com/articles/how-to-build-custom-hugo-pagination/) about custom pagination.
- All contributors, for every PR and Issue reported.

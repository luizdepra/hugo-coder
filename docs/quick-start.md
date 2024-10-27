# Quick Start

To start using `hugo-coder`:

1. Add the repository into your Hugo Project repository as a submodule, `git submodule add https://github.com/luizdepra/hugo-coder.git themes/coder`.
2. Configure your `hugo.toml`. You can use [this minimal configuration](https://github.com/luizdepra/hugo-coder/blob/main/docs/configurations.md#complete-example) as a base. The [`hugo.toml`](https://github.com/luizdepra/hugo-coder/blob/master/exampleSite/hugo.toml) inside the [exampleSite](https://github.com/luizdepra/hugo-coder/tree/master/exampleSite) from the `exampleSite` is also a good reference.
3. Build your site with `hugo serve` and see the result at `http://localhost:1313/`.

If you just want to test this theme, go to [this page](https://themes.gohugo.io/themes/hugo-coder/).

You can also clone or download it, then run these commands:

```
git clone https://github.com/luizdepra/hugo-coder.git

cd hugo-coder

make demo
```

You'll see the result at [http://localhost:1313/](http://localhost:1313/).

> These last two methods don't use the same content directory, the first one leads to 404 pages for some pages. More info [here](https://github.com/gohugoio/hugoThemes#adding-a-theme-to-the-list).

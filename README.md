<p align="center">
  <p align="center">
    <a href="https://themes.gohugo.io/hugo-coder/">
      <img src="https://img.shields.io/badge/theme-hugo--coder-2b8cbe" alt="Hugo Theme Badge"">
    </a>
    <a href="https://github.com/luizdepra/hugo-coder/blob/master/LICENSE.txt">
      <img src="https://img.shields.io/github/license/luizdepra/hugo-coder.svg" alt="MIT License Badge">
    </a>
  </p>

  <p align="center">
    <a href="https://github.com/13hannes11/hugo-coder-timeline">
      <img src="images/logos/logotype-a.png" alt="Hugo Coder Logo" width="600px" height="184px">
    </a>
  </p>
</p>

A simple and clean blog theme for [Hugo](https://gohugo.io/).

![](https://github.com/13hannes11/hugo-coder-timeline/blob/master/images/screenshot.png)


## Live Demo

See [here](https://hanneskuchelmeister.de/).

## Fork
This theme is forked from https://github.com/luizdepra/hugo-coder.

## Custom Config Options

I added config options for the timeline title and which posts to include in the timeline.
```
    timelineTitle="My Posts" # General timeline title
    timelineType="posts"
```
These can also be changed based on the language:
```
    [languages.pt-br]
        languageName = "Português"
        ...
        timelineTitle = "Meus Artigos"
        ...
```

## Quick Start

1. Add the repository into your Hugo Project repository as a submodule, `https://github.com/13hannes11/hugo-coder-timeline.git themes/hugo-coder-timeline`.
2. Configure your `config.toml`. You can either the [`config.toml`](https://github.com/13hannes11/hugo-coder-timeline/blob/master/exampleSite/config.toml) in the [`exampleSite`](https://github.com/13hannes11/hugo-coder-timeline/tree/master/exampleSite), or use the documentation of the original non forked version. For that use [this minimal configuration](https://github.com/luizdepra/hugo-coder/wiki/Configurations#complete-example) as a base, or look for a complete explanation about all configurations [here](https://github.com/luizdepra/hugo-coder/wiki/Configurations).
3. Build your site with `hugo serve` and see the result at `http://localhost:1313/`.

## Extra Guides

* [Multilingual Mode](https://github.com/luizdepra/hugo-coder/wiki/Multilingual-Mode)

## License

Coder Timeline is licensed under [MIT license](https://github.com/13hannes11/hugo-coder-timeline/blob/master/LICENSE.md), exactly like Coder which ([MIT license](https://github.com/luizdepra/hugo-coder/blob/master/LICENSE.md).)

## Maintenance

This fork is updated by [Hannes F. Kuchelmeister](https://github.com/13hannes11).

+++
date = "2019-03-20"
title = "Render LaTeX using KaTeX"
description = "Katex support demo"
katex = true
series = ["Theme", "Hugo"]
+++

Enable katex by adding `katex = "true"` to the [front matter](https://gohugo.io/content-management/front-matter/)  

```toml
+++
katex = "true"
+++
```

If you want to enable KaTeX or MathJax for all post, add `katex = ture` or `math = true` in `config.toml` in `[params]` section.

It's almost a dropin alternative to the mathjax solution,you should just choose one of them.  

Inline math looks like this  

```tex
This is text with inline math $\sum_{n=1}^{\infty} 2^{-n} = 1$
```

This is text with inline math $\sum_{n=1}^{\infty} 2^{-n} = 1$  
and with math blocks:  

```tex
$$
\sum_{n=1}^{\infty} 2^{-n} = 1
$$
```

$$
\sum_{n=1}^{\infty} 2^{-n} = 1
$$

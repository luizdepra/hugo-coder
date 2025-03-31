+++
authors = ["Lone Coder"]
date = "2023-07-08"
title = "Mermaid JS support"
description = "The post demonstrates Mermaid JS support"
tags = [
    "hugo",
    "markdown",
    "css",
    "html",
]
categories = [
    "theme demo",
    "syntax",
]
series = ["Theme Demo"]
+++

If you want to use [Mermaid-JS](https://mermaid-js.github.io/mermaid/#/) on your website.
Provide `mermaid` as [Shortcode](https://gohugo.io/content-management/shortcodes/#readout) in your markdown file.

{{<mermaid>}}
flowchart LR

    A --> B

    B --> C

    C --> D

    D --> B

{{</mermaid>}}

{{<mermaid>}}
sequenceDiagram
participant Alice
participant Bob
Alice->>Bob: Hi Bob
Bob->>Alice: Hi Alice
{{</mermaid>}}

Find more example on [Mermaid-JS](https://mermaid-js.github.io/mermaid/#/) website.

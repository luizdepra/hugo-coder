+++
authors = ["Programador Solitário"]
title = "Configuração de Equações Matemáticas"
date = "2023-07-10"
description = "Um guia rápido sobre utilizar KaTeX"
math ="true"
tags = [
    "hugo",
    "markdown",
    "css",
    "html",
]
categories = [
    "sintaxe",
    "demonstração do tema",
]
series = ["Demonstração do Tema"]
+++

Em um projeto Hugo as Notações Matemáticas podem ser usadas com a ajuda de bibliotecas JavaScript de terceiros.

<!--more-->

Nesse exemplo usaremos o [KaTeX](https://katex.org/).

-   Crie um partial template em `/layouts/partials/math.html`
-   Dentro, utilize o [Auto-render Extension](https://katex.org/docs/autorender.html) ou sirva os scripts localmente.
-   Inclua o partial nos seus templates da seguinte forma:

```bash
{{ if or .Params.math .Site.Params.math }}
{{ partial "math.html" . }}
{{ end }}
```

-   Para ativar o KaTex globalmente defina o parâmetro `math` como `true` na confgiuração do projeto
-   Para ativar o KaTex em páginas específicas inclua o parâmetro `math: true` nos arquivos de conteúdo

**Nota:** Use a referência online [Supported TeX Functions](https://katex.org/docs/supported.html) como base para criar notações matemáticas.

{{< math.inline >}}
{{ if or .Page.Params.math .Site.Params.math }}

<!-- KaTeX -->
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.css" integrity="sha384-zB1R0rpPzHqg7Kpt0Aljp8JPLqbXI3bhnPWROx27a9N0Ll6ZP/+DiW/UqRcLbRjq" crossorigin="anonymous">
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/katex.min.js" integrity="sha384-y23I5Q6l+B6vatafAwxRu/0oK/79VlbSz7Q9aiSZUvyWYIYsd+qj+o24G5ZU2zJz" crossorigin="anonymous"></script>
<script defer src="https://cdn.jsdelivr.net/npm/katex@0.11.1/dist/contrib/auto-render.min.js" integrity="sha384-kWPLUVMOks5AQFrykwIup5lo0m3iMkkHrD0uJ4H5cjeGihAutqP0yW0J6dpFiVkI" crossorigin="anonymous" onload="renderMathInElement(document.body);"></script>
{{ end }}
{{</ math.inline >}}

### Examples

{{< math.inline >}}

<p>
Notação inline: \(\varphi = \dfrac{1+\sqrt5}{2}= 1.6180339887…\)
</p>
{{</ math.inline >}}

Notação em bloco:

$$
 \varphi = 1+\frac{1} {1+\frac{1} {1+\frac{1} {1+\cdots} } }
$$

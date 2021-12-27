---
author: Hugo Authors
title: Configuração de Equações Matemáticas
date: 2019-03-08
description: Um guia rápido sobre utilizar KaTeX
katex: true
---

Em um projeto Hugo as Notações Matemáticas podem ser usadas com a ajuda de bibliotecas JavaScript de terceiros.
<!--more-->

Nesse exemplo usaremos o [KaTeX](https://katex.org/).

- Crie um partial template em `/layouts/partials/math.html`
- Dentro, utilize o [Auto-render Extension](https://katex.org/docs/autorender.html) ou sirva os scripts localmente.
- Inclua o partial nos seus templates da seguinte forma:

```bash
{{ if or .Params.math .Site.Params.math }}
{{ partial "math.html" . }}
{{ end }}
```

- Para ativar o KaTex em páginas específicas inclua o parâmetro `katex: true` nos arquivos de conteúdo

**Nota:** Use a referência online [Supported TeX Functions](https://katex.org/docs/supported.html) como base para criar notações matemáticas.

### Examples

Notação inline: $(\varphi = \dfrac{1+\sqrt5}{2}= 1.6180339887…)$

Notação em bloco:
$$
 \varphi = 1+\frac{1} {1+\frac{1} {1+\frac{1} {1+\cdots} } }
$$

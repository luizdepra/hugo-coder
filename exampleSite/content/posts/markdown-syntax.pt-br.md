+++
authors = ["Programador Solitário"]
title = "Guia de Sintaxe Markdown"
date = "2023-07-13"
description = "Artigo de exemplo mostrando a sintaxe básica Markdown e a formatação de elementos HTML."
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
aliases = ["migrate-from-jekyl"]
+++

Esse artigo é um exemplo básico para mostrar a sintaxe Markdown que é usada nos arquivos de conteúdo do Hugo. Ele também mostrar como cada elemento básico HTML é estilizado com CSS com os temas do Hugo.

<!--more-->

## Cabeçalhos

Os seguintes elementos HTML `<h1>`—`<h6>` representam 6 níveis de cabeçalhos de seção. `<h1>` é para seções de nível mais alto enquanto `<h6>` é para o nível mais baixo.

# H1

## H2

### H3

#### H4

##### H5

###### H6

## Parágrafo

Xerum, quo qui aut unt expliquam qui dolut labo. Aque venitatiusda cum, voluptionse latur sitiae dolessi aut parist aut dollo enim qui voluptate ma dolestendit peritin re plis aut quas inctum laceat est volestemque commosa as cus endigna tectur, offic to cor sequas etum rerum idem sintibus eiur? Quianimin porecus evelectur, cum que nis nust voloribus ratem aut omnimi, sitatur? Quiatem. Nam, omnis sum am facea corem alique molestrunt et eos evelece arcillit ut aut eos eos nus, sin conecerem erum fuga. Ri oditatquam, ad quibus unda veliamenimin cusam et facea ipsamus es exerum sitate dolores editium rerore eost, temped molorro ratiae volorro te reribus dolorer sperchicium faceata tiustia prat.

Itatur? Quiatae cullecum rem ent aut odis in re eossequodi nonsequ idebis ne sapicia is sinveli squiatum, core et que aut hariosam ex eat.

## Citações

O elemento de citações representa um conteúdo citado de outra origem, opcionalmente com atribuição que deve estar contida em um elemento `footer` ou `cite`, e também opcionalmente com informações in-line como anotações e abreviações.

#### Citações sem atribuição

> Tiam, ad mint andaepu dandae nostion secatur sequo quae.
> **Note** that you can use _Markdown syntax_ within a blockquote.

#### Citações com atribuição

> Não comunique compartilhando memória, compartilhe memória comunicando.<br>
> — <cite>Rob Pike[^1]</cite>

## Tabelas

Tabelas não fazem parte do cerne da especificação do Markdown, mas o Hugo oferece suporte a elas.

| Nome  | Idade |
| ----- | ----- |
| Bob   | 27    |
| Alice | 23    |

#### Tabelas com Markdown inline

| Italics   | Bold     | Code   |
| --------- | -------- | ------ |
| _italics_ | **bold** | `code` |

## Blocos de código

#### Blocos de código com crase

```html
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <title>Exemplo de Documento HTML5</title>
    </head>
    <body>
        <p>Teste</p>
    </body>
</html>
```

#### Blocos de código com quatro espaços

    <!doctype html>
    <html lang="pt-br">
    <head>
      <meta charset="utf-8">
      <title>Exemplo de Documento HTML5</title>
    </head>
    <body>
      <p>Teste</p>
    </body>
    </html>

#### Blocos de código com highlight shortcode interno do Hugo

{{< highlight html >}}

<!doctype html>
<html lang="pt-br">
<head>
  <meta charset="utf-8">
  <title>Exemplo de Documento HTML5</title>
</head>
<body>
  <p>Teste</p>
</body>
</html>
{{< /highlight >}}

## Tipos de Listas

#### Listas Ordenada

1. Primeiro item
2. Segundo item
3. Terceiro item

#### Listas não Ordenada

-   Um item
-   Outro item
-   Algum outro item

#### Listas aninhadas

-   Frutas
    -   Maçã
    -   Laranja
    -   Banana
-   Laticínios
    -   Leite
    -   Queijo

#### Notas de Rodapé

Verifique[^2] no final[^3] desse texto[^4].

## Outros Elementos — abbr, sub, sup, kbd, mark

<abbr title="Graphics Interchange Format">GIF</abbr> é um formato de imagem bitmap.

H<sub>2</sub>O

X<sup>n</sup> + Y<sup>n</sup> = Z<sup>n</sup>

Aperte <kbd><kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>Delete</kbd></kbd> para fechar.

A maioria das <mark>salamandras</mark> são noturnas e caçam insetos, vermes, e outras criaturas pequenas.

[^1]: A citação acima foi extraída da [apresentação](https://www.youtube.com/watch?v=PAAkCSZUG1c) do Rob Pike durante a Gopherfest, de 18 de Novembro de 2015.
[^2]: Uma nota de rodapé.
[^3]: Outra aqui.
[^4]: Legal, né?

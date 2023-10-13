+++
authors = ["Programador Solitário"]
title = "Suporte a Emojis"
date = "2023-07-07"
description = "Um guia de utilização de emojis com Hugo"
tags = [
    "hugo",
    "markdown",
    "emoji",
]
categories = [
    "sintaxe",
    "demonstração do tema",
]
series = ["Demonstração do Tema"]
+++

Emojis podem ser ativados em um projeto Hugo de diversar formas.

<!--more-->

A função [`emojify`](https://gohugo.io/functions/emojify/) pode ser chamada diretamente nos templates ou com [Inline Shortcodes](https://gohugo.io/templates/shortcode-templates/#inline-shortcodes).

Para ativar os emojis globalmente, aplique `enableEmoji` com o valor `true` na [configuração](https://gohugo.io/getting-started/configuration/) do seu site e então você poderá adicionar códigos de emoji diretamente nos arquivos de conteúdo. Por exemplo:

<p><span class="nowrap"><span class="emojify">🙈</span> <code>:see_no_evil:</code></span>  <span class="nowrap"><span class="emojify">🙉</span> <code>:hear_no_evil:</code></span>  <span class="nowrap"><span class="emojify">🙊</span> <code>:speak_no_evil:</code></span></p>
<br>

O [Emoji cheat sheet](http://www.emoji-cheat-sheet.com/) é uma referência útil para identificar códigos de emojis.

---

**Nota:** Os passos anteriores ativam os caractéres e sequências de emoji do Padrão Unicode no Hugo, porém a renderização desses glifos depende do navegador e plataforma utilizada. Para escolher o estilo dos emojis você pode tanto usar um font de emoji de terceiros ou uma lista de fontes. Por exemplo:

{{< highlight html >}}
.emoji {
font-family: Apple Color Emoji, Segoe UI Emoji, NotoColorEmoji, Segoe UI Symbol, Android Emoji, EmojiSymbols;
}
{{< /highlight >}}

{{< css.inline >}}

<style>
.emojify {
	font-family: Apple Color Emoji, Segoe UI Emoji, NotoColorEmoji, Segoe UI Symbol, Android Emoji, EmojiSymbols;
	font-size: 2rem;
	vertical-align: middle;
}
@media screen and (max-width:650px) {
  .nowrap {
    display: block;
    margin: 25px 0;
  }
}
</style>

{{< /css.inline >}}

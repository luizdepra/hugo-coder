+++
authors = ["Lone Coder"]
title = "HTML and CSS only tabs"
date = "2023-07-09"
description = "Sample article showcasing shortcodes for HTML/CSS only tabs"
tags = [
    "hugo",
    "markdown",
    "css",
    "html",
    "shortcodes",
]
categories = [
    "theme demo",
    "syntax",
]
series = ["Theme Demo"]
aliases = ["migrate-from-jekyl"]
+++

## Shortcodes

The following content:

```markdown
{{</* tabgroup */>}}
{{</* tab name="Hello" */>}}
Hello World!
{{</* /tab */>}}

{{</* tab name="Goodbye" */>}}
Goodbye Everybody!
{{</* /tab */>}}
{{</* /tabgroup */>}}
```

Will generate:

{{< tabgroup >}}
{{< tab name="Hello" >}}
Hello World!
{{< /tab >}}

{{< tab name="Goodbye" >}}
Goodbye Everybody!
{{< /tab >}}
{{< /tabgroup >}}

## Right alignment

You can also align the tabs to the right:

```markdown
{{</* tabgroup align="right" */>}}
{{</* tab name="Hello" */>}}
Hello World!
{{</* /tab */>}}

{{</* tab name="Goodbye" */>}}
Goodbye Everybody!
{{</* /tab */>}}
{{</* /tabgroup */>}}
```

Giving you this look:

{{< tabgroup align="right" >}}
{{< tab name="Hello" >}}
Hello World!
{{< /tab >}}

{{< tab name="Goodbye" >}}
Goodbye Everybody!
{{< /tab >}}
{{< /tabgroup >}}

## Markdown content

Any valid markdown can be used inside the tab:

````markdown
{{</* tabgroup align="right" style="code" */>}}
{{</* tab name="Ruby" */>}}

```ruby
puts 'Hello'
```

{{</* /tab */>}}
{{</* tab name="Python" */>}}

```python
print('Hello')
```

{{</* /tab */>}}
{{</* tab name="JavaScript" */>}}

```js
console.log("Hello");
```

{{</* /tab */>}}
{{</* /tabgroup */>}}
````

And you get this lovely content:

{{< tabgroup align="right" style="code" >}}
{{< tab name="Ruby" >}}

```ruby
puts 'Hello'
```

{{< /tab >}}
{{< tab name="Python" >}}

```python
print('Hello')
```

{{< /tab >}}
{{< tab name="JavaScript" >}}

```js
console.log("Hello");
```

{{< /tab >}}
{{< /tabgroup >}}

In this case `style="code"` makes it look a little nicer for scenarios where
your content is purely a code block.

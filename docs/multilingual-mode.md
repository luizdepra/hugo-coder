# Multilingual-Mode

* [Available Languages](#available-languages)
* [Configure Languages](#configure-languages)
* [Translation File Example](#translation-file-example)

## Available Languages

This theme supports the following languages:

- Arabic
- Bengali
- Czech
- German
- English
- Spanish
- Finnish
- French
- Hebrew
- Hindi
- Hungarian
- Italian
- Japanese
- Malay
- Dutch
- Polish
- Brazilian Portuguese
- Romanian
- Russian
- Swedish
- Slovak
- Turkish
- Simplified Chinese
- Taiwan Chinese
- Urdu

## Configure languages

Go to [this Hugo documentation page](https://gohugo.io/content-management/multilingual/#configure-languages) to configure one or multiple languages for your website.

## Translation File Example

```toml
[category]
other = "category"

[tag]
other = "tag"

[series]
other = "series"

[author]
other = "author"

[reading_time]
one = "One-minute read"
other = "{{ .Count }}-minute read"

[page_not_found]
other = "Page Not Found"

[page_does_not_exist]
other = "Sorry, this page does not exist."

[head_back]
other = "You can head back to <a href=\"{{ . }}\">homepage</a>."

[powered_by]
other = "Powered by"

[see_also]
other = "See also in"
```

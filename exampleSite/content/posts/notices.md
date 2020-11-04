+++ 
date = "2020-10-15"
title = "Notices"
description = "This post demonstrates notices"
series = ["Getting Started", "Hugo"]
+++

There are 4 types of notices that can be used. Note, warning, tip and info.

The note variation of the notice 

```hugo
{{</* notice note */>}}
This text is inside a note notice.
{{</* /notice */>}}
```

renders into 

{{< notice note >}}
This text is inside a note notice.
{{< /notice >}}

The **warning** variation of the notice

```
{{</* notice warning */>}}
This text is inside a warning notice.
{{</* /notice */>}}
```

renders into

{{< notice warning >}}
This is a warning notice. Be warned!
{{< /notice >}}

The **tip** variation of the notice

```md
{{</* notice tip */>}}
This text is inside a tip notice.
{{</* /notice */>}}
```

renders into

{{< notice tip >}}
This is a tip notice. Be warned!
{{< /notice >}}

The **info** version of the notice

{{< notice info >}}
This is a info notice. Be warned!
{{< /notice >}}


Markdown can also be used in a notice.

```md
{{</* notice note */>}}
It is also possible to **support** paragraphs.

For example here.
{{</* /notice */>}}
```
renders into 

{{< notice note >}}
It is also possible to **support** paragraphs.

For example here.
{{< /notice >}}

# One Dollars Stats

```toml
[params.onedollarstats]
    id = "data-site-id"
```

You will also need to update your content security policy:

```toml
[params.csp]
  ...
  scriptsrc = [
    ...
    "https://assets.onedollarstats.com",
  ]
  ...
  connectsrc = [
    ...
    "https://assets.onedollarstats.com",
    ...
  ]
```

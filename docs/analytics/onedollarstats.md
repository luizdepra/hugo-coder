# One Dollars Stats

```toml
[params.onedollarstats]
    id = "data-site-id"
```

You will also need to update your content security policy:

```
[params.csp]
  ...
  scriptsrc = [
    ...
    "https://assets.onedollarstats.com",
  ]
  ...
```

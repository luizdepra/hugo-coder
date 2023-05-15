# Baidu

To use Baidu analytics in this theme, navigate to the setting page of your
site at <https://tongji.baidu.com/>. You will get a piece of JS code provided
as follows:

```js
<script>
var _hmt = _hmt || [];
(function() {
    var hm = document.createElement("script");
    hm.src = "https://hm.baidu.com/hm.js?<your_token_at_here>";
    var s = document.getElementsByTagName("script")[0]; 
    s.parentNode.insertBefore(hm, s);
})();
</script>
```

Then you can use it by filling your site toke `your_token_at_here` in the
config file:

```toml
[params.baidu]
    token = "your_token_at_here"
```

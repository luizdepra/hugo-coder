# Wide Angle Analytics

Wide Angle Analytics is strictly **GDPR** compliant, privacy-first web analytics. Head to [wideangle.co](https://wideangle.co/) and create you free trial account now. 

## Configuration

Built in template supports following configuration options:

param | description | required | dafault 
------|-------------|----------|--------
siteID| A site ID from [Wide Angle site](https://wideangle.co/documentation/web-analytics-for-your-website)| :white_check_mark: | n/a
serverURL | [Domain](https://wideangle.co/documentation/track-with-custom-domain) with which the WAA is configured with | :x: | stats.wideangle.co 
fingerprint | Enable advanced session fingerprint; requires user consent | :x: | false
supressDNT | Ignore Do-Not-Track setting in the browser | :x: | false


## Example

```toml
[params.wideAngleAnalytics]
  siteID = "1D4EG3B9ACA03F4243"
  serverURL = "fyi.wideangle.co"
  fingerprint = "false"
  supressDNT = "false"
```

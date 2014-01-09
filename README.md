# Rerouter

[![Dependency Status](https://gemnasium.com/fancyremarker/rerouter.png)](https://gemnasium.com/fancyremarker/rerouter)


A minimal, Rack-based domain redirecter. Generates 301 redirects for subdomains under macreery.com and (potentially) other TLDs. Functionally identical to @joeyAghion's [implementation](/joeyAghion/rerouter), this repo differs in that the redirect configuration is stored in the repository instead of in Heroku environment variables.

## Deployment to Heroku

First, you must install the Heroku CLI locally, either via `gem install heroku`, or by installing the entire [Heroku toolbelt](https://toolbelt.heroku.com/).

```
git clone https://github.com/fancyremaker/rerouter.git
cd rerouter/
heroku apps:create
git push heroku master
heroku domains:add blog.macreery.com
```

## Copyright and License

MIT License, see [LICENSE](LICENSE.md) for details.

Copyright (c) 2014 Frank Macreery.

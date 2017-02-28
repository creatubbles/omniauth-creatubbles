# Omniauth Creatubbles

This is OmniAuth OAuth2 strategy for authenticating to Creatubbles.

https://www.creatubbles.com

## Usage

By default the strategy uses `https://api.creatubbles.com`. You can change it with `site` option, like this:

```ruby
use OmniAuth::Builder do
 provider :creatubbles,
   ENV['CREATUBBLES_API_KEY'],
   ENV['CREATUBBLES_API_SECRET'],
   provider_ignores_state: true,
   client_options: { site: ENV['CREATUBBLES_API_URL'] }
end
```

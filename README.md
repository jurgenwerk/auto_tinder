# Tinder automator

## What is it?
- A Ruby app using Clockwork recurring scheduler

## What does it do?
- Automatically and periodically likes everyone in Tinder based on your discovery preferences

## Usage:
- Add FACEBOOK_ID and FACEBOOK_TOKEN to your ENV (obtainable with Charles.app HTTP proxy and installing an SSL certificate on your phone - see <a href="http://timrogers.uk/2014/07/12/discovering-private-apis-with-charles-app/">this article</a> for help)
- Development
```
bundle install
bundle exec clockwork lib/auto_tinder.rb
```
- Production (Heroku): create a new Heroku app, set FACEBOOK_ID and FACEBOOK_TOKEN config vars and assign one (free) dyno to the auto_tinder process

## Changing location:
Run:
```
LAT="12.34" LNG="34.56" bundle exec rake update_location
```

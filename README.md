# Tinder automator

## What is it?
- A Ruby app using Clockwork recurring scheduler

## What does it do?
- Automatically and periodically likes everyone in Tinder based on your discovery preferences

## Usage:
- Development
```
bundle install
bundle exec clockwork lib/auto_tinder.rb
```
- Production (Heroku): create a new Heroku app, set FACEBOOK_ID and FACEBOOK_TOKEN config vars and assign one (free) dyno to the auto_tinder process

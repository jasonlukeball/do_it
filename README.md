# do_it

A self-destructing to-do list application..

http://do-it.jasonlukeball.com

## Installation

1. Clone repo & cd to app root
2. `gem install bundler && bundle install`
3. `bundle exec rake db:create db:migrate`
4. `rails server`
5. Head to `localhost:3000`

## Installing Intercom

1. Create environment variables file for dotenv gem: `touch .env`
2. Add Intercom environment variables to `.env` file (app_id & secret)
```
INTERCOM_APP_ID=your_app_id
INTERCOM_SECRET=your_secret
```
3. Make sure to add the .env file to your .gitignore file if pusing to public repo
`/.env`
4. Restart rails server
# Software Developer Coding Challenge

Autobid is a auto auction website hosted at https://autobidtoronto.herojuapp.com.

[![Coverage Status](https://coveralls.io/repos/github/medert/software-developer-coding-challenge/badge.svg?branch=master)](https://coveralls.io/github/medert/software-developer-coding-challenge?branch=master)[![Build Status](https://travis-ci.org/medert/software-developer-coding-challenge.svg?branch=master)](https://travis-ci.org/medert/software-developer-coding-challenge)


## Features

- [ ] Create new auction.
- [ ] Place a bid on auction
- [ ] Upload image of a car to the auction.
- [ ] Sign up and authenticate users.
- [ ] Record user's bid on a car
- [ ] Get the current winning bid for a car
- [ ] Get a car's bidding history

## Development

The project was developed on Ruby on Rails.

Also used during the application development:
- Bootstrap
- Boostrap Theme - Aranoz(https://colorlib.com/wp/template/aranoz/)
- Devise
- Carrierwave
-

## Testing

For futher development tasks sucsh running benchmarks and testing, the repo should be cloned and `install bundle`. Required gems are listed in Gemfile.

Install [bundle](http://bundler.io/)

      https://github.com/medert/software-developer-coding-challenge.git
      cd software-developer-coding-challenge
      bundle install

## Test Development

The following gems were used to develop and run unit and feature tests:
- RSpec (http://rspec.info/)
- Capybara (https://github.com/jnicklas/capybara)
- Shoulda-matchers (http://matchers.shoulda.io/)
- FFaker(https://github.com/ffaker/ffaker)
- FactoryBot(https://github.com/thoughtbot/factory_bot)


To prepare for testing, run

    rails db:test:prepare

To run all test specs, run:

    rspec

You may specify an individual test file to run using rspec:

    rspec <full test name>

For example:

    rspec spec/features/01_users_controller_spec.rb

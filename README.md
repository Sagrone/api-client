# Sagrone API Client

[![Build Status](https://travis-ci.org/Sagrone/api-client.svg?branch=master)](https://travis-ci.org/Sagrone/api-client)

This is the Ruby Client for [Sagrone API](https://github.com/Sagrone/api). It exposes Ruby objects to interact with the API.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Modules](#modules)
- [Development](#development)
- [Changelog](/CHANGELOG.md)
- [Contributing](#contributing)
- [License](#license)

## Installation

_Note: Both API and client are work-in-progress. Gem can be used from master branch._

Add this line to your application's Gemfile:

```ruby
gem 'sagrone', github: 'Sagrone/api-client'
```

And then execute:

    $ bundle

## Usage

First, you must configure `Sagrone.client`:

```ruby
Sagrone.client.configure do |c|
  c.url = 'http://localhost:3100/v1'
end
```

Then you will be able to:

```ruby
event = Sagrone::Event.create(title: 'MilanoJS', description: 'The DOM of Milan.')
=> #<Sagrone::Event(events/54f2492747696c269b010000) title="MilanoJS" description="The DOM of Milan." id="54f2492747696c269b010000">

Sagrone::Event.all.count
=> 1

Sagrone::Event.find('54f2492747696c269b010000')
=> #<Sagrone::Event(events/54f2492747696c269b010000) title="MilanoJS" description="The DOM of Milan." id="54f2492747696c269b010000">
```

## Modules

* `Sagrone::Event`

The API wrapper is powered by [Her](https://github.com/remiprev/her), so most of [its documentation](https://github.com/remiprev/her#activerecord-like-methods) will be helpful.

## Development

First setup your gem dependencies:

    bundle install

To run tests:

    rspec

To open a console with this library loaded:

    rake console

## Contributing

1. Fork it ( https://github.com/[my-github-username]/sagrone/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License

This package is licensed under the [Apache License, Version 2.0](http://www.apache.org/licenses/LICENSE-2.0).

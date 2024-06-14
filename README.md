# Gw2::Api

This is a gem used to make calls to the Guild Wars 2 API.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add gw2-api

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install gw2-api

## Usage

To use the gem, first require it in the application, then create a new instance of the `Gw2::Api::Client` class:

```ruby
require 'gw2-api'

client = Gw2::Api::Client.new(api_key: ENV["GW2_API_KEY"])

puts client.account.body
puts client.achievements(ids: "1840,910")
```

You can replace `ENV["GW2_API_KEY"]` with your own API Key, or set the env variable

A list of available functions can be found `lib/gw2/modules`. 

You can find valid parameters for each function in the [Guild Wars 2 API documentation](https://wiki.guildwars2.com/wiki/API:Main) or from the public [API-CDI](https://github.com/arenanet/api-cdi) repo.

## Tests

To run the tests, execute:

    $ bundle exec rspec

Note that you need to set a valid API key in the environment variable `GW2_API_KEY` to run the tests.
GW2's API Availability can affect the result of the tests (if it's down, the tests will fail).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nicholasrobertm/gw2-api.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Be a decent person, and don't be a jerk, it's that simple!

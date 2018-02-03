# botan-ruby

Ruby wrapper for [botan.io](http://botan.io).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'botan-ruby'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install botan-ruby

### Obtain Token

1. Register at [appmetrica.yandex.com](http://appmetrica.yandex.com/)
2. After registration you will be prompted to create Application. Please use @YourBotName as a name.
3. Save an API key from settings page, you will use it as a token for Botan API calls.
4. [Optional] You can set token key globally for the gem

```ruby
Botan.configuration.token = 'Token key'
```

or

```ruby
Botan.configure do |conf|
  conf.token = 'Token key'
end
```

## Usage

```ruby
uid = 123
message = 'text'
name = 'search'
token = 'token key' # [optional] if not set globally 
Botan.track(uid, message, name, token)
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Stajor/botan-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
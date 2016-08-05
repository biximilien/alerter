# Alerts

A restful alert system for the SP project.

## Usage

```ruby
class Person < ActiveRecord::Base
  alertable
end

alice = Person.new
bob = Person.new


alice.alert(:new_follower, bob)
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'alerts'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install alerts
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

# Alerter

A restful notification engine for Ruby on Rails originally developed for a
social network project I was working on in college.

## Usage

```ruby
# app/models/application_record.rb
class ApplicationRecord < ActiveRecord::Base
  include Alerter
end


# app/models/person.rb
class Person < ApplicationRecord
  alertable
end


# app/alerts/person_alerts.rb
class PersonAlerts < Alerter::Alerts
  define do |alerts|
    alerts.message :new_follower do |source, target, object|
      "#{source} is now following you!"
    end

    alerts.message :new_comment do |source, target, object|
      "#{source} has commented on #{object}"
    end

    alerts.message :pasta do |source, target, object|
      I18n.translate :pasta,
        source: source, target: target, object: object
    end

    # functional equivalent
    alerts.localized_message :pasta
  end
end


alice = Person.new
bob = Person.new


alice.alert(key: :new_follower, source: bob)


# app/controllers/profiles_controller.rb
ProfilesController < ActionController::Base
  def dashboard
    @alerts = current_user.alerts
  end
end
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'alerter'
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

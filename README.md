# DatetimeFormatter

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/datetime_formatter`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'datetime_formatter'
```

And then execute:
```bash
$ bundle
```
Or install it yourself as:
```ruby
$ gem install datetime_formatter
```
## Usage

```ruby
  class Post < ActiveRecord::Base
    # automatically format the created_at & updated_at column in given format
    has_datetime_formatter format: '%d/%m/%y'
  end

  @post.created_at
  "06/03/18"

  class Post < ActiveRecord::Base
    # this option will allow to give custom date time format for specific column
    has_datetime_formatter custom_format: {created_at: '%d/%m/%y', updated_at: '%d/%m/%Y at %I-%M %p'}
  end

  @post.created_at
    "06/03/18"

  @post.updated_at
  "06/03/2018 at 12-30 PM"

  # to get actual value
  @post.or_updated_at
```

## Development
After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/railsfactory-sivamanikandan/datetime_formatter. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the DateFormatter project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/railsfactory-sivamanikandan/datetime_formatter/blob/master/CODE_OF_CONDUCT.md).

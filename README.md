# Daypack

Daypack contains a handful of Ruby and Rails extensions that have proven useful in building [Scoutplan](https://github.com/scoutplan/scoutplan).

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add daypack

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install daypack

## Usage

### Array extensions
#### to_grammatical_list

Converts an array to a grammatical list. For example, `['a', 'b', 'c'].to_grammatical_list` returns `a, b, and c`

### Integer extensions
#### mondays, tuesdays, wednesdays, thursdays, fridays, saturdays, sundays:

Returns an ActiveSupport::Duration object. One can then do things like `3.tuesdays.from_now` or `5.saturdays.ago`

### String extensions

#### numeric?

Returns true if the string evaluates to a number

#### question?

Returns true if the string ends in a question mark (?)

### Datetime extensions

#### next_occurrence_of

Returns the next occurrence of a given time. For example, `Time.now.next_occurrence_of(9, 0)` returns the next 9:00am.

### Time extensions

#### time_of_day

Returns a string corresponding to the part of the day. Possible values are `morning`, `afternoon`, `evening`, `night`

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/scoutplan/daypack. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/scoutplan/daypack/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Daypack project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/scoutplan/daypack/blob/master/CODE_OF_CONDUCT.md).

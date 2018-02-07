# MM-Phonenumbers

Ruby port of [mm_phonenumber](https://github.com/Melomap/mm_phonenumber) to check valid myanmar mobile numbers, get mobile operator's name, sanitize mobile numbers and get mobile network types.

Credit: [Original script (Python)](https://github.com/Melomap/mm_phonenumber)
[Original script (PHP)](https://github.com/johnreginald/myanmar-phone-number-php)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mm_phonenumbers'
```

And then execute:

```bash
$ bundle
```

Or install it yourself as:

```bash
$ gem install mm_phonenumbers
```

## Usage

```ruby
require 'mm_phonenumbers'

MmPhonenumbers.is_valid_phone('09450012345')

MmPhonenumbers.get_telecom_name('09450012345')

MmPhonenumbers.is_provided_telecom('mpt','09450012345)

```

## Contributing

1. Fork it ( https://github.com/swesweucsy/mm_phonenumbers.git )
2. Create your feature branch (`git checkout -b my-new-feature`)
  - Install ruby with [rvm](http://rvm.io), if you haven't.
  - Run `bundle install`
  - Add a test case.
  - Implement the code.
  - Make the tests pass.
  - You can run with `rake test` or just `rake` in the repo.
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## License
MIT
# ZipcodesUsa

It provides the USA Zipcodes list in which you can easily search any USA zipcode by their code, city, and state name.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'zipcodes_usa'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install zipcodes_usa

## Usage
```ruby
require 'zipcodes_usa'

# for getting all data
ZipcodesUsa::Data.select()

# find zipcode data by city
ZipcodesUsa::Data.select(city: 'Eek')
# Output: [{"postal_code"=>"99578", "city"=>"Eek", "state"=>"AK"}, {"postal_code"=>"99578", "city"=>"Eek", "state"=>"AK"}]

# find zipcode by code
ZipcodesUsa::Data.select(postal_code: '12345')
# or
ZipcodesUsa::Data.details('12345')
# Output: {"postal_code"=>"97148", "city"=>"Yamhill", "state"=>"OR"} 

# get city list by state name
ZipcodesUsa::Data.cities(state: 'NY')

# get city name by state and zipcode
ZipcodesUsa::Data.cities(state: 'NY', postal_code: '12345')
# Output: ["Schenectady"]
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Throughout-Dev/zipcodes_usa#readme. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Contact Us
You can contact us or share your suggestions to us on our email.
Send us email: [Hello@throughouttechnologies.com](Hello@throughouttechnologies.com)
Follow us on linkedin: [throughouttechnologies.pvt.ltd](https://www.linkedin.com/company/throughouttechnologiespvt.ltd./?viewAsMember=true)

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

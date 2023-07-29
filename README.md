# EAV Model

EAV Model is a Rails gem for adding an Entity-Attribute-Value (EAV) model to your Rails application.

## Installation

Add this line to your application's Gemfile:

```zsh
gem 'eav_model'
```

And then execute:

```zsh
bundle install
```

Or install it yourself with the following command:

```zsh
gem install eav_model
```

## Usage

In your Rails model:

```ruby
class Product < ApplicationRecord
  include EavModel
  eav_model_for :attributes, :values
end
```

This will set up has_many :attributes and has_many :values, through: :attributes associations on the Product model.

Next, run the following command to create the necessary migration:

```zsh
rails generate eav_model:migration
```

And then migrate the database:

```zsh
rails db:migrate
```

Now, you can use the attributes association to add attributes to your Product model. Each attribute can have an
IntegerValue, StringValue, or BooleanValue.

Here is an example:

```ruby
product = Product.create(name: 'Smartphone')

# Create an attribute
attribute = product.attributes.create(name: 'Color')

# Create a string value for the attribute
StringValue.create(value: 'Black', attribute: attribute)

# Fetch the values for an attribute
attribute.string_values # Returns a collection of string values
attribute.integer_values # Returns a collection of integer values
attribute.boolean_values # Returns a collection of boolean values
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/DerekCrosson/eav_model. This project is
intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the
[code of conduct](https://github.com/DerekCrosson/eav_model/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the EAV Model project's codebases, issue trackers, chat rooms and mailing lists is expected to
follow the [code of conduct](https://github.com/DerekCrosson/eav_model/blob/main/CODE_OF_CONDUCT.md).

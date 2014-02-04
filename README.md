Spree Recently Sold Products
=========================

Compatible with spree >= 1.3.3

Installation
------------

Add spree_recently_sold_products to your Gemfile:

```ruby
gem 'spree_recently_sold_products'
```

Bundle your dependencies and run the installation generator:

```shell
bundle
```

Testing
-------

Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

```shell
bundle
bundle exec rake test_app
bundle exec rspec spec
```

When testing your applications integration with this extension you may use it's factories.
Simply add this require statement to your spec_helper:

```ruby
require 'spree_recently_sold_products/factories'
```

Copyright (c) 2014 [http://www.cuberoot.in](Cuberoot Software), released under the New BSD License

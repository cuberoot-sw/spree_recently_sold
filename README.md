Spree Recently Sold Products
=========================

Compatible with spree >= 1.3.3

This extension displays a list of recently sold products on the home
page.
Currently displaying 10 recently sold products.


Installation
------------

Add spree_recently_sold_products to your Gemfile:

```ruby
gem 'spree_recently_sold_products'
```

Install your dependencies

```shell
bundle install
```

Customization
-------------
By default the recently sold products are displayed at the bottom. You
can change this by overriding the view in `app/overrides/spree/add_recently_sold_product.rb`

To Do
-------
1. Configuration for number of products to display.

Copyright (c) 2014 [http://www.cuberoot.in](Cuberoot Software), released under the New BSD License

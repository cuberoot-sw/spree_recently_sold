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
```ruby
Deface::Override.new(:virtual_path => 'spree/home/index',
                     :insert_bottom => "[data-hook='homepage_products']",
                     :partial => "/spree/home/recently_sold_products",
                     :disabled => false,
                     :name => 'add_recently_sold_product')
```

Configuration
-------------

By default the 10 recently sold products are displyed here.

To change this, use `:recently_sold_product_limit` preference.

One possible solution is like:
```ruby
  # app/models/product_decorator.rb

  Spree::Product.class_eval do
    Spree::Config[:recently_sold_product_limit] = 5
  end

```

Note:
  Once a preference is set, you will need to either set it back yourself to the default, if you want to use default preference value. 

NOTE: No migrations are required for this extension

Copyright (c) 2014 [Cuberoot Software](http://www.cuberoot.in), released under the New BSD License

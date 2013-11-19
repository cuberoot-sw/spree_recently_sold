Deface::Override.new(:virtual_path => 'spree/home/index',
                     :insert_bottom => "[data-hook='homepage_products']",
                     :partial => "/spree/home/recently_sold_products",
                     :disabled => false,
                     :name => 'add_recently_sold_product')

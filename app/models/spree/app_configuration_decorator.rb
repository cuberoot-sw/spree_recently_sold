Spree::AppConfiguration.class_eval do
  # preference for setting recently sold products limit
  preference :recently_sold_product_limit, :integer, default: 10
end

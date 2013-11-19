Spree::BaseHelper.class_eval do
  def get_recetly_sold_products
      @recently_sold_products = Spree::Product.recently_sold
    end
end

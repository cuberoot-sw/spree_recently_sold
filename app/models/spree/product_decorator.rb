Spree::Product.class_eval do
  def self.recently_sold
    @sold_products = []
    @orders =
      Spree::Order.where('state = ?', 'complete').order('created_at DESC')
    @orders.each do |order|
      order.products.each do |product|
        if @sold_products.count < Spree::Config[:recently_sold_product_limit]
          @sold_products << product
          @sold_products.uniq!
        else
          break
        end
      end
    end
    @sold_products
  end
end

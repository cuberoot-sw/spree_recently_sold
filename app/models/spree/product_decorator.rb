Spree::Product.class_eval do
  def self.recently_sold
    @sold_products = []
    @orders = Spree::Order.where("state = ?", "complete").order("created_at DESC").limit(10)
    @orders.each do |order|
      order.products.each do |product|
        if @sold_products.count <= 10
          @sold_products << product
          @sold_products.uniq!
        else
          break
        end
      end
    end
    return @sold_products
  end
end

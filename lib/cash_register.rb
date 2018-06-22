
class Cash_register

  attr_accessor :discount

  def initialize(discount)
    @discount = discount
    @basket = {}
    @total = 0

  end

  def total
    @total
  end

  def add_item(item, price, quantity)
    @basket << item
    if quantity == true
      product_total = price * quantity
      @total + product_total
    else
    @total + price
  end





end

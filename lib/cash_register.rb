class CashRegister
  attr_accessor :total, :discount, :price, :basket

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @basket = []
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @basket << item
        counter += 1
      end
    else
      @basket << item
    end
  end

  def apply_discount
    if @discount > 0
      @to_take_off = (price * discount)/100
      @total -= @to_take_off
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end

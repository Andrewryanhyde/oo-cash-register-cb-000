
class CashRegister

  attr_accessor :discount, :total, :price, :items

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @basket = []
  end

  def total
   @total
  end

  def add_item(item, price, quantity = 1)
    @total += price * quantity
      if quantity > 1
        counter = 0
        while counter < quantity
          @items << item
          counter += 1
        end
      else
        @items << item
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

  def items
    @basket
  end

  def void_last_transaction
    @basket.pop
    @new_total - @price
  end






end

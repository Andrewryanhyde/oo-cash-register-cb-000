
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
  end

  def apply_discount
    if @discount > 0
      @to_disc = (price * discount)/100
      @new_total -= @to_disc
      puts "After the discount, the total comes to #{@new_total}."
    else
      puts "There is no discount to apply."
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

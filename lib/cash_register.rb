
class CashRegister

  attr_accessor :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @basket = []
  end

  def total
   @total
  end

  def add_item(item, price, quantity)
    @item = item
    @price = price
    @basket << @item
    if quantity == true
      product_total = @price * quantity
      @total += product_total
    else
    @total += @price
    end
  end

  def apply_discount
    if @discount == true
      perc_after_disc = 100 - @discount
      @new_total = @total / 100 * perc_after_disc
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

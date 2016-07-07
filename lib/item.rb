class Item
  attr_reader :quantity
  attr_accessor :name, :price, :description

  def initialize(name, price)
    @name = name
    @price = price
    @quantity = 0
    @description = ''
  end

  def sell(amt)
    if @quantity >= amt
      @quantity -= amt
      true
    else
      false
    end
  end

  def stock(amt)
    @quantity += amt
    true
  end

  def get_stock()
    return @quantity
  end
end

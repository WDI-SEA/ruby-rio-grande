class Item
  attr_reader :quantity
  attr_accessor :name, :price, :description
 

  def initialize name, price
    @name = name
    @price = price
    @quantity = 0
    @description = ""
    ship_price_per_oz = 1.2
    @weight = 0
  end

  def sell amount
    if @quantity >= amount
      @quantity -= amount
      true
    else
      false
    end
  end

  def stock amount
    @quantity += amount
    true
  end

  def ship_price
    puts ship_price_per_oz * weight
    true
  end

end

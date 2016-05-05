class Item
  attr_reader :quantity, :ship_price_per_oz
  attr_accessor :name, :price, :weight, :description, :ship_price

  def initialize name, price, weight
    @name = name
    @price = price
    @quantity = 0
    @description = ""
    @weight = weight || @weight = 0
    @ship_price_per_oz = 1.2
    @ship_price = 0
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

  def return amount
    @quantity += amount
    true
  end
  def ship_price 
    @ship_price = @weight * @ship_price_per_oz
  end
end

class Item
  attr_reader :quantity
  attr_accessor :name, :price, :description, :weight
  @@ship_price_per_oz = 1.2
  def initialize name, price
    @name = name
    @price = price
    @weight = 0
    @quantity = 0
    @description = ""
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

  def ship_price weight
   price = weight * @@ship_price_per_oz
   puts "$#{price}"
  end
end

class Item
  attr_reader :quantity
  attr_accessor :name, :price, :description, :weight

  @@ship_price_per_oz = 1.2

  def initialize name, price
    @name = name
    @price = price
    @quantity = 0
    @description = ""
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

  def return amount
    @quantity += amount
    true
  end

  def ship_price
    @@ship_price_per_oz * @weight
    if @weight == -1
      false
    end
  end

end

class Item
  attr_reader :quantity, :ship_price_per_oz
  attr_accessor :name, :price, :description, :weight

  def initialize name, price
    @name = name
    @price = price
    @quantity = 0
    @description = ""
    @weight = 0
    @ship_price_per_oz = 1.2

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

  def return
    item.return 1
  end

  def ship_price
    if weight == -1
      return false
    else
      @ship_price_per_oz * @weight
    end
  end

end

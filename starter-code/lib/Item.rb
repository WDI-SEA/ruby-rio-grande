class Item
  attr_reader :quantity, :ship_price
  attr_accessor :name, :price, :description, :weight

  def initialize name, price
    @name = name
    @price = price
    @weight = 0
    @ship_price = 1.2
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

  def return amount
    @quantity += amount
    true
  end

  def ship_price
    if @weight == -1
      return false
    end
    @ship_price * @weight
  end
end
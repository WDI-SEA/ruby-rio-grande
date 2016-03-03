class Item
  attr_reader :quantity
  attr_accessor :name, :price, :description, :oz

  def initialize name, price
    @name = name
    @price = price
    @oz = 0
    @quantity = 0
    @description = ""
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

  def return amount
    @quantity = amount+2
    true
  end

  def weight amount
    @oz = amount
  end

  def ship_price 
    @ship_price_per_oz*@oz 
  end


end

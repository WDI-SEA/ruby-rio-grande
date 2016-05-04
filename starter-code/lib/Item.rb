class Item
  attr_reader :quantity, :ship_price_per_oz
  attr_accessor :name, :price, :description, :weight

  def initialize name, price, weight
    @name = name
    @price = price
    @weight = weight
    @ship_price_per_oz = 1.2
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
  	@weight * @ship_price_per_oz
  end
end

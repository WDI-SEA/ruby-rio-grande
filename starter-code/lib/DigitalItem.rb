class DigitalItem
  attr_accessor :name, :price, :description, :quantity, :oz

  def initialize name, price
    @name = name
    @price = price
    @quantity = 0
    @oz = -1
    @description = ""
  end

  def sell amount
    true
  end

  def stock amount
    false
  end

  def return amount
    true
  end

  def weight amount
    @oz = amount
  end

  def ship_price
    @ship_price_per_oz*@oz = 0
    false
  end

# Quantity should always be 1
# Quantity does not decrease when sold
# Quantity should not increase on stock
end 
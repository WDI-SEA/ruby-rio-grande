require_relative 'Item.rb'

class DigitalItem < Item
  attr_reader :quantity

  def initialize (name, price)
    super(name, price)
    @quantity = 1
    @weight = -1
  end

  def stock amount
    @quantity = 1
    true
  end

  def sell amount
    @quantity = 1
    true
  end

  def return amount
    @quantity = 1
    true
  end
  
  def ship_price
    false
  end
  
end

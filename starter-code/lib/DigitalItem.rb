# You are on your own... good luck.

class DigitalItem
  attr_reader :quantity
  attr_accessor :name, :price, :description

  def initialize name, price
    @name = name
    @price = price
    @quantity = 1
    @description = ""
  end

  def sell amount

  end

  def stock amount 
    true
  end
end

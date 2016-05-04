# You are on your own... good luck.
require_relative 'Item.rb'
class DigitalItem < Item

attr_reader :quantity

    def initialize name, price
    @quantity = 1
    super(name,price)
  end


  def sell amount
    @quantity =1
  end

  def stock amount
    @quantity =1 
  end
 end
  # * DigitalItem < Item
  # * Quantity should always be 1
  # * Quantity does not decrease when sold
  # * Quantity should not increase on stock


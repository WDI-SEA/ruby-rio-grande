require_relative 'Item.rb'
require 'pry'

class DigitalItem < Item

attr_reader :quantity, :weight
 
  

  def initialize name, price
    super(name,price)
    @quantity = 1
    @weight = -1

  end


  def sell amount
    @quantity =1
  end

  def stock amount
    @quantity =1 
  end

  def return(amount)
    @quantity =1
  end


end
  # * DigitalItem < Item
  # * Quantity should always be 1
  # * Quantity does not decrease when sold
  # * Quantity should not increase on stock




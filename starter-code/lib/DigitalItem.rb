require_relative 'Item.rb'

class Digital_item < Item


  attr_accessor :quantity, :description 

  def initialize name, price
    super(name,price)
    @quantity = 1
    @description = description
    @weight = -1
  end

  def sell amount
    puts "item sold"
    @quantity = 1
    true
  end

  def stock amount
    puts "is available"
    @quantity = 1
    true
  end

  def return
    @quantity = 1
    "item returned"
    true
  end
end


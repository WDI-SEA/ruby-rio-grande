require_relative 'Item.rb'

class Digital_item < Item


  attr_accessor :quantity, :description, :weight

  def initialize quantity,description
    super(name,price)
    @quantity = 1
    @description = description
    @weight = -1

  end

  def sell amount
    puts "item sold"
    @quantity = 1
  end

  def stock amount
    puts "is available"
    @quantity = 1
  end

  def return
    @quantity = 1
    "item returned"
  end
end
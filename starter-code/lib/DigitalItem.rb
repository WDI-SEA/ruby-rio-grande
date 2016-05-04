require_relative 'Item.rb'

class Digitalitem < Item


  attr_accessor :quantity, :description, :weight

  def initialize quantity,description
    super(name,price)
    @quantity = 1
    @description = description
    @weight = -1

  end

  def sell amount
    puts "Item was sold"
    @quantity = 1
  end

  def stock amount
    puts "Item is available"
    @quantity = 1
  end

  def return
    @quantity = 1
    "Digital copy has been returned"
  end
end

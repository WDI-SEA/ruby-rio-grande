require_relative 'item.rb'

class Digital_item < Item
  attr_accessor :name, :price, :quantity

  def initialize(name, price, quantity)
    @name = name
    @price = price
    @quantity = 1
  end
end

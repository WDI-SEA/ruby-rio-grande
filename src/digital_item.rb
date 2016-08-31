require_relative 'item.rb'

class Digitalitem < Item
  attr_accessor :name, :price, :description, :quantity

  def initialize(name, price, description, quantity)
    @name = name
    @price = price
    @description = description
    @quantity = quantity
  end

end

require_relative 'item.rb'

class Bluray < Item
  attr_reader :quantity
  attr_accessor :name, :price, :length, :description

  def initialize(name, price, length, description)
    @name = name
    @price = price
    @length = length
    @description = description
    @quantity = 0
  end

end


# You are on your own... good luck.
require_relative 'item.rb'

class Digitalitem < Item
  attr_accessor :name, :price, :describe, :quantity

  def initialize(name, price)
    super(name, price)
  end

  def sell(amount)
    @quantity = 1
    true
  end

  def stock(amount)
    @quantity = 1
    true
  end
end
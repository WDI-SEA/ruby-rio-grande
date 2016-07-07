# You are on your own... good luck.
require_relative 'item.rb'

class Digital_item < Item
  attr_accessor :name, :price, :quantity

  def initialize(name, price)
    super(name, price)
    @quantity = 1
  end

  def sell(amt)
    @quantity = 1
  end

end

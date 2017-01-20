# You are on your own... good luck.
require_relative 'item.rb'

class Digital_item < Item
  attr_accessor :name, :price
  
  def initialize(name, price)
    super(name, price)
  end

  def sell(amount)
    amount = 1
  end

  def stock(amount)
    stock = 1
  end
end

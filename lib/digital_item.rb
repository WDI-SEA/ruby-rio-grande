# You are on your own... good luck.
require_relative 'item.rb'

class DigitalItem < Item
  def initialize(name, price)
    super(name, price)
    @quantity = 1
  end

  def sell(amount)
    @quanity = 1
    true
  end

  def stock(amount)
    @quantity = 1
    true
  end
end

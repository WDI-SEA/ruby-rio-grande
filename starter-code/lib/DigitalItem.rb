# You are on your own... good luck.
require_relative 'Item.rb'
class DigitalItem < Item

  def initialize(name, price)
    super(name, price)
    @quantity = 1
    @weight = -1
  end

  def sell(amount)
    true
  end

  def stock(amount)
    true
  end

  def return(amount)
    @quntity = 1
  end
end

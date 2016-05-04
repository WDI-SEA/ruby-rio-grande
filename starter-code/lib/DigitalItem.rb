require_relative 'Item.rb'

class DigitalItem < Item
  attr_accessor :name, :price

  def initialize name, price
  	super(name, price, -1)
  	@quantity = 1
  end

  def sell amount
    true
  end

  def stock amount
    true
  end

  def return amount
    true
  end
end
require_relative 'Item.rb'
class DigitalItem < Item
  attr_accessor :name, :price

  def initialize name, price
    super(name,price)
    @quantity = 1
    @weight = -1
  end

  def sell amount
    if amount
      true
    else
      false
    end
  end

  def stock amount
    @quantity = 1
    true
  end

  def return amount
    @quantity = 1
    true
  end

end

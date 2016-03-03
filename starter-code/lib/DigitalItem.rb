require_relative 'Item.rb'
class Digital < Item
  def initialize name, price
    super(name, price)
    @quantity = 1
    @weight = -1
  end

  def sell amount
    @quantity = 1
    true
  end

  def stock 
    @quantity = 1
    true
  end

  def return amount
    @quantity = 1
    true
  end
end
require_relative 'Item.rb'

class Digital_item < Item

  attr_accessor :name, :price
  
  def initialize name, price
    super(name, price)
    @quantity = 1
    @weight = -1
  end

  def sell amount
    true
  end
  def stock amount
    true
  end

end
require_relative 'Item.rb'

class Digital_item < Item
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
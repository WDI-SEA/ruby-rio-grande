require_relative 'Item.rb'

class Digital < Item
  attr_reader :quantity

  def initialize (name, price)
    super(name, price)
    @quantity = 1
  end

  def sell amount
    @quantity = 1
  end

  def stock amount
    @quantity = 1
  end
end
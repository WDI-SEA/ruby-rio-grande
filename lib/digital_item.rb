require_relative 'item.rb'

class Digital_item < Item
  # attr_accessor
  def initialize(name, price)
    super(name, price)
    @quantity = 1
  end

  def sell(amount)
    if @quantity == 1
      true
    end
  end

  def stock(amount)
    true
  end
end

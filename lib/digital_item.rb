require_relative 'item.rb'

class Digital < Item

  def initialize(name, price)
    super(name, price)
    @quantity = 1
  end

  def sell(amount)
    if @quantity == 1
      true
    else
      false
    end
  end

  def stock(amount)
    true
  end

end 
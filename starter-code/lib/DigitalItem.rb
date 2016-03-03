require_relative 'Item.rb'
class Digital_Item < Item
	

 
  def initialize name, price
    super(name, price)
    @quantity = 1 
    @description = ""
    @weight = -1
  end

  def sell amount
    true
  end

  def stock amount
    true
  end

  def return (amount)
    true
  end

  def ship_price
     false
  end

end
# You are on your own... good luck.
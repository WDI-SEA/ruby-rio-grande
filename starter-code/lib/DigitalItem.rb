require_relative 'Item.rb'

QUANTITY_CONSTANT = 1
@@weight = -1
class Bluray < Item
  def initialize
    super(name, price)
  end

  def return(amount)
    puts QUANTITY_CONSTANT
  end

  def ship_price
    puts false    
  end

end
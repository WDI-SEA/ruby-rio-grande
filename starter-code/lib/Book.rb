require_relative 'Item.rb'
class Book < Item

  def initialize name, price
    super(name,price)
  end

  def properties
  	@pages = num
  	@author = author
  end
end

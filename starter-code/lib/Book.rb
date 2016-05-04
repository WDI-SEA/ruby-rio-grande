require_relative 'Item.rb'
class Book < Item

  def initialize name, price
    super(name,price)
  end

  def properties(pages, author)
  	@pages = num
  	@author = author
  end
end

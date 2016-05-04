# You are on your own... good luck.
require_relative 'DigitalItem.rb'
class EBook < DigitalItem

  def initialize name, price
    super(name,price)
  end

  def properties(pages, author)
  	@pages = num
  	@author = author
  end
end
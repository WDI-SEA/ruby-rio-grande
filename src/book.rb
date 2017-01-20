require_relative 'item.rb'

class Book < Item
  attr_accessor :name, :price, :pages, :author

  def initialize(name, price, pages, author)
    super(name, price)
    @name	 = name
    @price = price
    @pages = pages
    @author = author
  end
end

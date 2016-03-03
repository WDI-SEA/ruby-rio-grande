require_relative 'Item.rb'
class Book < Item
  attr_accessor :pages, :author

  def initialize(name, price, pages, author)
    super(name,price)
    @pages = pages
    @author = author
  end
end

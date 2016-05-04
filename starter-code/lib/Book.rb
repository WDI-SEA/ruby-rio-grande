require_relative 'Item.rb'
class Book < Item

  attr_accessor :author, :pages

  def initialize name, price, pages, author
    @pages = pages
    @author = author
    super(name,price)
  end
end

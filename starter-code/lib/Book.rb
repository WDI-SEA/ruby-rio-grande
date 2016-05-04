require_relative './Item.rb'

class Book < Item
  attr_accessor :pages, :author

  def initialize name, price, pages, author
    super(name, price)
    @author = author
    @pages = pages
  end
end

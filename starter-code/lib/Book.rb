require_relative 'Item.rb'
class Book < Item
	attr_accessor :name, :price, :weight, :pages, :author

  def initialize name, price, weight, pages, author
    super(name,price, weight)
    @pages = pages
    @author = author
  end
end

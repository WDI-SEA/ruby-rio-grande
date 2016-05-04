require_relative 'DigitalItem.rb'

class Ebook < Digital_item

  attr_accessor :name, :price, :pages, :author

  def initialize name, price, pages, author
    super(name,price)
    @pages = pages
    @author = author
  end
end

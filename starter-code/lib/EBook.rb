require_relative 'DigitalItem.rb'
class Ebook < Digital_item

  def initialize name, price, pages, author
    super(name,price)
    @pages = pages
    @author = author
  end
end

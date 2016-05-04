require_relative 'DigitalItem'
class EBook < DigitalItem
  attr_accessor :name, :price, :pages, :author

  def initialize name, price, pages, author
    super(name,price)
    @pages = pages
    @author = author
  end
end
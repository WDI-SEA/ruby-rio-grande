require_relative 'item.rb'

class Book < Item
  attr_accessor :pages, :author

  def initialize(pages, author)
    super(name, price)
    @pages = pages
    @author = author
  end
end

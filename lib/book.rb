require_relative 'item.rb'

class Book < Item

  attr_accessor :price, :name, :pages, :author

  def initialize(name, price)
    super(name, price)
    @pages = pages
    @author = author
  end
end

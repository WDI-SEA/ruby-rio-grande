require_relative 'item.rb'


class Book < Item

  attr_reader :quantity
  attr_accessor :name, :price, :description, :pages, :author

  def initialize(name, price, pages, author)
    super(name, price)
    @pages = pages
    @author = author
  end
end

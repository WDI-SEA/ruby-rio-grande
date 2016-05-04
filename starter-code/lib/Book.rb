require_relative 'Item.rb'
class Book < Item
  attr_reader :pages
  attr_accessor :name, :price, :quantity, :description, :author

  def initialize name, price, pages, author
    super(name,price)
    @pages = pages
    @author = author
    @quantity = 0
    @description = ""
  end

  def sell amount
    if @quantity >= amount
      @quantity -= amount
      true
    else
      false
    end
  end

  def stock amount
    @quantity += amount
    true
  end
end

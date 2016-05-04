require_relative 'Item.rb'
class Book < Item

  def initialize (name, price, pages, author, quantity, weight)
    super(name, price)
    @pages = pages
    @author = author
    @quantity = quantity
    @weight = weight
  end
  attr_accessor :pages

  attr_accessor :author
  attr_accessor :quantity
  attr_accessor :weight
  
  def return(amount)
    puts @quantity += amount
  end

end

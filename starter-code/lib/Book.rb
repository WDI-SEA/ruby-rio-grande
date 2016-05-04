require_relative 'Item.rb'
class Book < Item

  def initialize (name, price, pages, author)
    super(name, price)
    @pages = pages
    @author = author
    @weight = 4cd ../
  end

  def ship 
    ship_price(@weight)
  end

  def return (amt)
    stock(amt)
    puts @quantity
  end 
end

book1 = Book.new("Greatbook", 1.99, 80, "Brian B")
book2 = Book.new("okoks", 2.99, 56, "dojd3")

book2.return(2)
book2.ship

book1.return(5)
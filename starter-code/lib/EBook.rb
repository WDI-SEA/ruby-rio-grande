require_relative 'DigitalItem.rb'
class Ebook < DigitalItem
  def initialize (name, price, pages, author)
    super(name, price)
    @pages = pages
    @author = author
    
  end

  def return (amt)
    stock(amt)
    puts "You returned #{amt} items."
  end 



end

ebook1 = Ebook.new("DumbBook", 9.99, 50, "CoolAuthor")

ebook1.return(2)

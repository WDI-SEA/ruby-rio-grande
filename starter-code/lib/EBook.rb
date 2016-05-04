require_relative 'DigitalItem.rb'

class EBook < DigitalItem

  def initialize (name, price, pages, author, ship_price)
    super(name,price)
    @pages = pages
    @author = author
  end

  attr_accessor :pages
  attr_accessor :author
  
  def return(amount)
    puts QUANTITY_CONSTANT
  end

  def ship_price
    puts false    
  end
  
end
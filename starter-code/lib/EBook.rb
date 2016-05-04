require_relative 'DigitalItem.rb'

class EBook < DigitalItem

  def initialize (name, price, pages, author)
    super(name,price)
    @pages = pages
    @author = author
  end

  attr_accessor :pages
  attr_accessor :author

  def return(amount)
    puts QUANTITY_CONSTANT
  end

  def stock (amount)
   true
  end

  def ship_price
    puts false    
  end
  
end
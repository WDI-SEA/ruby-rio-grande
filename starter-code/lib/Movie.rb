require_relative 'DigitalItem.rb'

class Movie < DigitalItem

  def initialize (name, price, run_time, director, producer, ship_price)
    super(name,price)
    @run_time = run_time
    @director = director
    @producer = producer 
  end

  attr_accessor :run_time
  attr_accessor :director
  attr_accessor :producer

  def return(amount)
    puts QUANTITY_CONSTANT
  end
  
  def ship_price
    puts false    
  end
end
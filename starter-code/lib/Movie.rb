require_relative 'DigitalItem.rb'
class Movie < DigitalItem
  def initialize (name, price, run_time, director, producer)
    super(name, price)
    @run_time = run_time
    @director = director
    @producer = producer
  end

  def return (amt)
    stock(amt)
    puts "You returned #{amt} items."
  end 

end
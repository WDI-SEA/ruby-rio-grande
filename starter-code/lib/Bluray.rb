require_relative 'Item.rb'
class Bluray < Item
  def initialize (name, price, run_time, director, producer)
    super(name, price)
    @run_time = run_time
    @director = director
    @producer = producer
    @weight = 3
  end

  def ship 
    ship_price(@weight)
  end

  def return (amt)
    stock(amt)
    puts @quantity
  end 
end

test_blu = Bluray.new("CoolBlu", 8.99, "96 minutes", "Halbert", "Gilbert")

test_blu.ship
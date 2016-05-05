require_relative 'Item.rb'
class Bluray < Item

  def initialize (name, price, run_time, director, producer, quantity, weight)
    super(name, price)
    @run_time = run_time
    @director = director
    @producer = producer 
    @quantity = quantity
    @weight = weight
  end
  attr_accessor :run_time
  attr_accessor :director
  attr_accessor :producer

  attr_accessor :quantity
  attr_accessor :weight
  
  def return(amount)
    puts @quantity += amount
  end

end
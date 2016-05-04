require_relative 'DigitalItem.rb'
class Movie < DigitalItem
  attr_reader :run_time, :director, :producer 
  attr_accessor :name, :price

  def initialize name, price, run_time, director, producer
    super(name,price)
    @run_time = run_time
    @director = director
    @producer = producer
  end
end
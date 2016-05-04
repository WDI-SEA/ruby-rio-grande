require_relative 'DigitalItem.rb'

class Movie < DigitalItem
  attr_accessor :name, :price, :run_time, :director, :producer

  def initialize name, price, run_time, director, producer
  	super(name,price)
  	@quantity = 1
  	@run_time = run_time
  	@director = director
  	@producer = producer
  end

  def sell amount
    true
  end

  def stock amount
    true
  end
end
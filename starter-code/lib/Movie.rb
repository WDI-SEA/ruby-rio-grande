require_relative 'DigitalItem.rb'

class Movie < Digital_item

  attr_accessor :name, :price, :run_time, :director, :producer

  def initialize name, price, run_time, director, producer
    super(name, price)
    @run_time = run_time
    @director = director
    @producer = producer
  end

end
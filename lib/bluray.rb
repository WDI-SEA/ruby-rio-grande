require_relative 'item.rb'

class Bluray < Item
  attr_accessor :name, :price, :run_time, :director, :producer

  def initialize(name, price, run_time, director, producer)
    @name = name
    @price = price
    @run_time = run_time
    @director = director
    @producer = producer
  end
end

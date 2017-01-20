require_relative 'item.rb'

class Bluray < Item
  attr_accessor :quantity, :name, :price, :description, :run_time, :director, :producer

  def initialize(name, price, run_time, director, producer)
    super(name, price)
    @run_time = run_time
    @director = director
    @producer = producer
  end
end

require_relative 'Item.rb'
class Bluray < Item
  attr_accessor :run_time, :director, :producer

  def initialize name, price, run_time, director, producer, weight=0
    super(name, price, weight)
    @run_time = run_time
    @director = director
    @producer = producer
  end
end
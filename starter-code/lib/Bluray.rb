require_relative 'Item.rb'
class Bluray < Item
  attr_accessor :name, :price, :weight, :run_time, :director, :producer
  def initialize name, price, weight, run_time, director, producer
    super name, price, weight
    @run_time = run_time
    @director = director
    @producer = producer
  end
end
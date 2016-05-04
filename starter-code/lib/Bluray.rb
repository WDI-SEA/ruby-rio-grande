
require_relative './Item.rb'
class Bluray < Item
  attr_accessor :name, :price, :weight, :runtime, :director, :producer
  def initialize name, price, weight, runtime, director, producer
    super name, price, weight
    @runtime = runtime
    @director = director
    @producer = producer
  end
end
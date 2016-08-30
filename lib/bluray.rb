require_relative 'item.rb'

class Bluray < Item

  attr_accessor = :quantity, :name, :price, :description, :runtime, :director, :producer

  def initialize(name, price, runtime, director, producer)
    super(name, price)
    @runtime = runtime
    @director = director
    @producer = producer
  end
end

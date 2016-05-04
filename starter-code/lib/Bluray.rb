require_relative 'Item.rb'
class Bluray < Item
  attr_accessor :runtime, :director, :producer

  def initialize runtime, director, producer
    super("Bluray")
    @runtime = runtime
    @director = director
    @producer = producer
  end
end
  
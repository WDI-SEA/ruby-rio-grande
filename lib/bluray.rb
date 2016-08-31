require_relative 'item.rb'

class Bluray < Item
  def initialize(runtime, director, producer)
    super('name', 'price')
    @runtime = runtime
    @director = director
    @producer = producer
  end
end

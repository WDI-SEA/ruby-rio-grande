require_relative 'item.rb'

class Bluray < Item
  attr_accessor :run_time, :director, :producer

  def initialize(minutes, direct, prod)
    super(name, price)
    @run_time = minutes
    @director = direct
    @producer = prod
  end

end

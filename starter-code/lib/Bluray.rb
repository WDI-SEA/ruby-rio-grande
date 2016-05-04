require_relative 'Item.rb'
class Bluray < Item
  attr_reader :run_time, :director, :producer 
  attr_accessor :name, :price, :quantity  

  def initialize name, price, run_time, director, producer
    super(name,price)
    @run_time = run_time
    @director = director
    @producer = producer
    @quantity = 0
    @description = ""
  end

  def sell amount
    if @quantity >= amount
      @quantity -= amount
      true
    else
      false
    end
  end

  def stock amount
    @quantity += amount
    true
  end
end
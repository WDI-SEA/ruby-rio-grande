require_relative './Digital_item.rb'
class Movie < Digital_item
  attr_accessor 

  def initialize name, price
    super(name, price)
  end

end
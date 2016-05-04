require_relative './Digital_item.rb'
class Song < Digital_item
  attr_accessor :length, :author

  def initialize name, price
    super(name, price)
  end

end
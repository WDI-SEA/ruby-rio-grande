require_relative 'item.rb'

class Book < Item
  def initialize(name, price)
    super(name, price)
  end
end

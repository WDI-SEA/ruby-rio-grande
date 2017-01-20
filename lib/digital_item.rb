require_relative 'item.rb'

class DigitalItem < Item

  attr_accessor :name, :price

  def initialize(name, price)
    super(name, price)
  end

end
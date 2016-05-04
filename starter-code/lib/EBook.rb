require_relative './Digital_item.rb'
class Ebook < Digital_item
  attr_accessor :pages, :author

  def initialize name, price
    super(name, price)
  end

end
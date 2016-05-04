require_relative './Item.rb'


class Ebook < Digital_item


  def initialize name, price
    super(name, price)
  end

end
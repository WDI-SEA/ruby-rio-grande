require_relative 'Item.rb'
class DigitalItem < Item
  attr_accessor :name, :price
  attr_reader :weight

  def initialize name, price, download_size=0
    super(name,price)
    @quantity = 1
    @weight = -1
    @download_size = download_size
  end

  def sell amount
    if amount
      true
    else
      false
    end
  end

  def stock amount
    @quantity = 1
    true
  end

  def return amount
    @quantity = 1
    true
  end

end

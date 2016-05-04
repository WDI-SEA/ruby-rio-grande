class Item
  attr_reader :quantity
  attr_accessor :name, :price, :weight, :description

  def initialize name, price, weight
    @name = name
    @price = price
    @quantity = 0
    @description = ""
    @weight = weight || @weight = 0
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

  def return amount
    @quantity += amount
    true
  end
end

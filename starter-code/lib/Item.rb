class Item
  attr_reader :quantity
  attr_accessor :name, :price, :description, :weight

  def initialize name, price
    @name = name
    @price = price
    @quantity = 0
    @description = ""
    @weight = 0

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

  def return
    item.return 1
  end

end

require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem  do
  before(:context) do
    @digitalitem =DigitalItem.new("placeholder", 1.99)
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@digitalitem).to be_a(Item)
    end
    it "is assigned a name" do
      expect(@digitalitem.name).to eq("placeholder")
    end
    it "is assigned a price" do
      expect(@digitalitem.price).to eq(1.99)
    end
     it "has no weight" do
      expect(@digitalitem.weight).to eq(-1)
    end
  end
  
  describe "Accessors" do
    it "should be able to get and set name" do
      @digitalitem.name="New Name"
      expect(@digitalitem.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @digitalitem.price=44.99
      expect(@digitalitem.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@digitalitem.description).to eq("")
      @digitalitem.description="test"
      expect(@digitalitem.description).to eq("test")
    end
     it "should maintain 0 weight" do
      @item.weight=10
      expect(@item.weight).to eq(0)
    end
  end
  
  describe "Methods" do
    it "stock should stay constant" do
      result = @digitalitem.stock 5
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)
    end
    it "quantity should not decrease if sale is made" do
      result = @digitalitem.sell 6
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)
    end
    it "should be able to return items and keep quantity constant" do
      result = @digitalitem.return 3
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)
    end
     it "should produce no shipping price and weight to be nothing" do
      expect(@digitalitem.ship_price).to eq(false)
      expect(@digitalitem.weight).to eq(-1)
    end
  end
    
 
end
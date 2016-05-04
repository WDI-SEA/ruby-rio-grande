require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    #initialize item
    @digital_item = DigitalItem.new "DigItem title", 6.99
  end

  #check initialization
  describe "initialization" do
    #check that it is an extended from Item
    it "extend from the Item class" do
      expect(DigitalItem).to be < Item
    end
    #check that it is an instance of Cd
    it "is an instance of the DigitalItem class" do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end
  end

  describe "Accessors" do
    #check getters and setters
    it "should be able to get and set name" do
      @digital_item.name = "new digitem Title"
      expect(@digital_item.name).to eq("new digitem Title")
    end
    it "should be able to get and set price" do
      @digital_item.price = 10.99
      expect(@digital_item.price).to eq(10.99)
    end
    it "should have weight attribute set to -1 to show there is no weight" do
      expect(@digital_item.weight).to eq(-1)
    end
  end

  describe "Methods" do
    it "quanity should always be 1" do
      expect(@digital_item.quantity).to eq(1)
    end
    it "should not decrease quanity when sold" do
      result = @digital_item.sell 3
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
      expect(@digital_item.quantity).not_to be < 1

    end
    it "should not increase quanity when stocked" do
      result = @digital_item.stock(10)
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it "should not increase quanity when returned" do
      result = @digital_item.return(10)
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it "should calculate ship_price as false" do
      price = @digital_item.ship_price
      expect(price).to eq(false)
    end
  end

end

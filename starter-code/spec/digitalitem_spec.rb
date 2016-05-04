require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe Digital_item do
	
	before(:context) do
		@digital_item1 = Digital_item.new("Starter Pack", 0.99)
	end

	describe "Initialization" do
    it "is a kind of the Item class" do
      expect(@digital_item1).to be_a_kind_of(Item)
    end

    it "is an instance of the Digital_item class" do
    	expect(@digital_item1).to be_instance_of(Digital_item)
    end

    it "is assigned a name" do
      expect(@digital_item1.name).to eq("Starter Pack")
    end
    it "is assigned a price" do
      expect(@digital_item1.price).to eq(0.99)
    end
  end

  describe "Accessors" do
    it "quatity of digital item should always be 1" do
      expect(@digital_item1.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @digital_item1.name="New Name"
      expect(@digital_item1.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @digital_item1.price=44.99
      expect(@digital_item1.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@digital_item1.description).to eq("")
      @digital_item1.description="test"
      expect(@digital_item1.description).to eq("test")
    end
  end

  describe "Methods" do
    it "should be able to stock, quantity should stay as 1" do
      result = @digital_item1.stock 5
      expect(result).to eq(true)
      expect(@digital_item1.quantity).to eq(1)
    end
    it "should able to sell items regardless of stock since it's always 1" do
      result = @digital_item1.sell 6
      expect(result).to eq(true)
      expect(@digital_item1.quantity).to eq(1)
    end
    it "should be able to sell items and quantity should stay as 1" do
      result = @digital_item1.sell 3
      expect(result).to eq(true)
      expect(@digital_item1.quantity).to eq(1)
    end
  end

  describe "Part 2 Methods" do
    it "should be able to return, digital items wont change the quantity" do
      result = @digital_item1.return 2
      expect(result).to eq(true)
      expect(@digital_item1.quantity).to eq(1)
    end
    it "should have a default weight of -1 for digital items" do
      expect(@digital_item1.weight).to eq(-1)
    end
    it "should not be able to set a new weight" do
      @digital_item1.weight = 1
      expect(@digital_item1.weight).to eq(-1)
    end
    it "should not be to report a ship_price" do
      expect(@digital_item1.ship_price).to eq(false)
    end
  end
end


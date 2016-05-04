require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do
	
	before(:context) do
		@digitalitem1 = DigitalItem.new("Starter Pack", 0.99)
	end

	describe "Initialization" do
    it "is a kind of the Item class" do
      expect(@book1).to be_a_kind_of(Item)
    end

    it "is an instance of the DigitalItem class" do
    	expect(@book1).to be_instance_of(DigitalItem)
    end

    it "is assigned a name" do
      expect(@book1.name).to eq("Starter Pack")
    end
    it "is assigned a price" do
      expect(@book1.price).to eq(0.99)
    end
  end

  describe "Accessors" do
    it "quatity of digital item should always be 1" do
      expect(@item.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @item.name="New Name"
      expect(@item.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @item.price=44.99
      expect(@item.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@item.description).to eq("")
      @item.description="test"
      expect(@item.description).to eq("test")
    end
  end

  describe "Methods" do
    it "should be able to stock, quantity should stay as 1" do
      result = @item.stock 5
      expect(result).to eq(true)
      expect(@item.quantity).to eq(1)
    end
    it "should able to sell items regardless of stock since it's always 1" do
      result = @item.sell 6
      expect(result).to eq(true)
      expect(@item.quantity).to eq(1)
    end
    it "should be able to sell items and quantity should stay as 1" do
      result = @item.sell 3
      expect(result).to eq(true)
      expect(@item.quantity).to eq(2)
    end
  end

end


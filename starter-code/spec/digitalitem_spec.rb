require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    @digital_item = DigitalItem.new("Something", 12.99, 1)
  end

  describe "Initialization" do
  	it "is an instance of the Item class" do
  		expect(@digital_item).to be_instance_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@digital_item.name).to eq("Something")
    end
    it "is assigned a price" do
      expect(@digital_item.price).to eq(12.99)
    end
  end

  describe "Inheritance" do
    it "should extend Item" do
      expect(DigitalItem).to be < Item
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @digital_item.name="New Name"
      expect(@digital_item.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @digital_item.price=44.99
      expect(@digital_item.price).to eq(44.99)
    end
    it "should be able to get quantity" do
      expect(@digital_item.quantity).to eq(1)
      @digital_item.quantity = 3
    end
  end
end

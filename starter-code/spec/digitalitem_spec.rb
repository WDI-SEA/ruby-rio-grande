require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    @digital_item = DigitalItem.new("Generic digital_item",1.99)
  end

  describe "Initialization" do
    it "is an instance of the digital_item class" do
      expect(@digital_item).to be_instance_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@digital_item.name).to eq("Generic digital_item")
    end
    it "is assigned a price" do
      expect(@digital_item.price).to eq(1.99)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@digital_item.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @digital_item.name="New Name"
      expect(@digital_item.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @digital_item.price=44.99
      expect(@digital_item.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@digital_item.description).to eq("")
      @digital_item.description="test"
      expect(@digital_item.description).to eq("test")
    end

    it "should return false for ship price" do
    	expect(@digital_item.ship_price).to eq(false)
    end
  end

  end


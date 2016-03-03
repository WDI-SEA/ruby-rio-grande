require_relative 'spec_helper'
require_relative '../lib/Digitalitem.rb'

describe Digital do

  before(:context) do
    @digital_item = Digital.new("Generic Item",1.99)
  end

  describe "Initialization" do
    it "is an instance of the Digital class" do
      expect(@digital_item).to be_instance_of(Digital)
    end
    it "is assigned a name" do
      expect(@digital_item.name).to eq("Generic Item")
    end
    it "is assigned a price" do
      expect(@digital_item.price).to eq(1.99)
    end
    it "should be kind of Item" do
      expect(@digital_item).to be_kind_of(Item)
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
  end

  describe "Methods" do
    it "stock should not impact inventory" do
      result = @digital_item.stock
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it "should be able to sell regardless of stock" do
      result = @digital_item.sell 6
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it "returns should not impact inventory" do
      result = @digital_item.return 90
      expect(result).to eq(true)
      expect(@digital_item.quantity).to eq(1)
    end
    it "should have no weight and no cost to ship" do
      expect(@digital_item.weight).to eq(-1)
      expect(@digital_item.shipping_price).to eq(false)
    end
  end

end
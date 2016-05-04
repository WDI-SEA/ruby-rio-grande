require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    @item = DigitalItem.new("Generic Item",1.99)
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@item).to be_instance_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@item.name).to eq("Generic Item")
    end
    it "is assigned a price" do
      expect(@item.price).to eq(1.99)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
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

  end

end

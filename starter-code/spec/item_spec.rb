require_relative 'spec_helper'
require_relative '../lib/Item'

describe Item do

  before(:context) do
    @item = Item.new("Generic Item",1.99)
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@item).to be_instance_of(Item)
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
      expect(@item.quantity).to eq(0)
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
    it "should be able to stock" do
      result = @item.stock 5
      expect(result).to eq(true)
      expect(@item.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @item.sell 6
      expect(result).to eq(false)
      expect(@item.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @item.sell 3
      expect(result).to eq(true)
      expect(@item.quantity).to eq(2)
    end    
  end

end
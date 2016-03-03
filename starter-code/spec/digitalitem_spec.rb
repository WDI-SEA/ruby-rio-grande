require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do
  before (:context) do
    @digitalitem = DigitalItem.new("Dummies", 10)
  end

  describe "Initialization" do
    it "is an instance of DigitalItem" do
      expect(@digitalitem).to be_instance_of(DigitalItem)
    end

    it "is a kind of Item" do
      expect(@digitalitem).to be_kind_of(Item)
    end

    it "is assiged a name" do
      expect(@digitalitem.name).to eq("Dummies")
    end

    it "is assigned a price" do
      expect(@digitalitem.price).to eq(10)
    end

    it "has a weight" do
      expect(@digitalitem.weight).to eq(-1)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@digitalitem.quantity).to eq(1)
    end

    it "should be able to get and set name" do
      @digitalitem.name = "Name"
      expect(@digitalitem.name).to eq("Name")
    end

    it "should be able to get and set price" do
      @digitalitem.price = 1
      expect(@digitalitem.price).to eq(1)
    end
  end

  describe "Methods" do
    it "should not increase stock" do
      result = @digitalitem.stock 2
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)
    end
    it "should not decrease stock on sell" do
      result = @digitalitem.sell(20)
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)
    end
    it "should not increase stock on return" do
      result = @digitalitem.return 19
      expect(result).to eq(true)
      expect(@digitalitem.quantity).to eq(1)
    end
    it "should not have a ship price" do
      expect(@digitalitem.ship_price).to eq(false)
    end
  end
end
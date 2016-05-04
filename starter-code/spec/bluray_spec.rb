require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    @br1 = Bluray.new("Fifth Element", 6, 126, "Luc Besson", "Gaumont")
  end

  describe "Initialization" do
    it "is a kind of the Item class" do
      expect(@br1).to be_a_kind_of(Item)
    end
    it "is an instance of the Bluray class"
    it "is assigned a name" do
      expect(@br1.name).to eq("Fifth Element")
    end
    it "is assigned a price" do
      expect(@br1.price).to eq(6)
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@br1.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @br1.name="New Name"
      expect(@br1.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @item.price=44.99
      expect(@br1.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@br1.description).to eq("")
      @br1.description="test"
      expect(@br1.description).to eq("test")
    end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @br1.stock 5
      expect(result).to eq(true)
      expect(@br1.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @br1.sell 6
      expect(result).to eq(false)
      expect(@br1.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @br1.sell 3
      expect(result).to eq(true)
      expect(@br1.quantity).to eq(2)
    end
  end
  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  #check getters and setters

end

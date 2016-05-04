require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd1 = Cd.new("Make it Big", 19, 8, "Wham!", "6:32")
  end

  describe "Initialization" do
    it "is a kind of the Item class" do
      expect(@cd1).to be_a_kind_of(Item)
    end
    it "is an instance of the Cd class" do
    	expect(@cd1).to be_instance_of(Cd)
    end
    it "is assigned a name" do
      expect(@cd1.name).to eq("Make it Big")
    end
    it "is assigned a price" do
      expect(@cd1.price).to eq(19)
    end
    it "is assigned a number of tracks" do
    	expect(@cd1.tracks).to eq(8)
    end
    it "is assigned an artist" do
    	expect(@cd1.artist).to eq("Wham!")
    end
    it "is assigned a runtime" do
    	expect(@cd1.runtime).to eq("6:32")
    end
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@cd1.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @cd1.name="New Name"
      expect(@cd1.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @cd1.price=44.99
      expect(@cd1.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@cd1.description).to eq("")
      @cd1.description="test"
      expect(@cd1.description).to eq("test")
    end
  end

  describe "Methods" do
    it "should be able to stock" do
      result = @cd1.stock 5
      expect(result).to eq(true)
      expect(@cd1.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @cd1.sell 6
      expect(result).to eq(false)
      expect(@cd1.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @cd1.sell 3
      expect(result).to eq(true)
      expect(@cd1.quantity).to eq(2)
    end
  end

  describe "Part 2 Methods" do
    it "should be able to return" do
      result = @cd1.return 2
      expect(result).to eq(true)
      expect(@cd1.quantity).to eq(4)
    end
    it "should have a default weight of 0" do
      expect(@cd1.weight).to eq(0)
    end
    it "should be able to set a new weight" do
      @cd1.weight = 1
      expect(@cd1.weight).to eq(1)
    end
    it "should be able to report a ship_price" do
      expect(@cd1.ship_price).to eq(1.2)
    end
  end
end

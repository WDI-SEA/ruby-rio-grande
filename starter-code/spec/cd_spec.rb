require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new("Generic Item",1.99, 10, "The Beatles", 35)
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@cd).to be_a(Item)
    end
    it "is extended from Item" do
      expect(@cd).to be_an(Item)
    end
    it "is an instance of CD" do
      expect(@cd).to be_instance_of(Cd)
    end
  end
  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters
  describe "Accessors" do
    it "should be able to get and set Artist" do
      @cd.artist="Pink Floyd"
      expect(@cd.artist).to eq("Pink Floyd")
    end
    it "should be able to get track count" do
      expect(@cd.tracks).to eq(10)
    end
    it "should be able to get quantity" do
      expect(@cd.quantity).to eq(0)
    end
    it "should be able to get and set name" do
      @cd.name="New Name"
      expect(@cd.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @cd.price=44.99
      expect(@cd.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@cd.description).to eq("")
      @cd.description="test"
      expect(@cd.description).to eq("test")
    end
  end


   describe "Methods" do
    it "should be able to stock" do
      result = @cd.stock 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @cd.sell 6
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @cd.sell 3
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(2)
    end
  end


end

require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new("Lemonade", 18.99, 12, "Beyonce", 70)
  end

  describe "Initialization" do
  	it "is an instance of the Item class" do
  		expect(@cd).to be_instance_of(Cd)
    end
    it "is assigned a name" do
      expect(@cd.name).to eq("Lemonade")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(18.99)
    end
  end

  describe "Inheritance" do
    it "should extend Item" do
      expect(cd).to be < Item
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @cd.name="New Name"
      expect(@cd.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @cd.price=44.99
      expect(@cd.price).to eq(44.99)
    end
    it "should be able to get and set tracks" do
      expect(@cd.tracks).to eq(12)
      @cd.tracks=14
      expect(@cd.tracks).to eq(14)
    end
    it "should be able to get and set artist" do
      expect(@cd.artist).to eq("Beyonce")
      @cd.artist="Not Beyonce"
      expect(@cd.artist).to eq("Not Beyonce")
    end
    it "should be able to get and set runtime" do
      expect(@cd.runtime).to eq(70)
      @cd.runtime=80
      expect(@cd.runtime).to eq(80)
    end
  end

  describe "Methods" do
    it "should be able to return items and update quantity" do
      result = @item.return 5
      expect(result).to eq(true)
      expect(@item.quantity).to eq(7)
    end
    it "should be able to get and set weight" do
      expect(@item.weight).to eq(0)
      @item.weight = 2
      expect(@item.weight).to eq(2)
    end
  end
end

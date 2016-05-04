require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    @bluray = Bluray.new("When Harry Met Sally", 18.99, 150, "Rob Reiner", "Some white guy")
  end

  describe "Initialization" do
  	it "is an instance of the Item class" do
  		expect(@bluray).to be_instance_of(Bluray)
    end
    it "is assigned a name" do
      expect(@bluray.name).to eq("When Harry Met Sally")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(18.99)
    end
  end

  describe "Inheritance" do
    it "should extend Item" do
      expect(bluray).to be < Item
  end


  describe "Accessors" do
    it "should be able to get and set name" do
      @bluray.name="New Name"
      expect(@bluray.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @bluray.price=44.99
      expect(@bluray.price).to eq(44.99)
    end
    it "should be able to get and set runtime" do
      @bluray.runtime=134
      expect(@bluray.runtime).to eq(134)
    end
    it "should be able to get and set director" do
      expect(@bluray.director).to eq("Rob Reiner")
      @bluray.director="another guy"
      expect(@bluray.director).to eq("another guy")
    end
    it "should be able to get and set producer" do
      expect(@bluray.producer).to eq("Some white guy")
      @bluray.producer="test"
      expect(@bluray.producer).to eq("test")
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

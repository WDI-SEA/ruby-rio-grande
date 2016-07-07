require_relative 'spec_helper'
require './lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @blueray = Bluray.new('Finding Nemo', 5, 120, "Bobby", "Tables")
  end

  # check initialization
  describe "initialization" do
    # check that it is an instance of Bluray
    it "should be an instance of Blueray" do
      expect(@blueray).to be_instance_of(Bluray)
    end

    # check that it is an extended from Item
    it "should be an kind of Item" do
      expect(@blueray).to be_kind_of(Item)
    end

    it "should be assigned a name" do
      expect(@blueray.name).to eq ("Finding Nemo")
    end

    it "should be assigned a price" do
      expect(@blueray.price).to eq (5)
    end

    it "should be assigned a runtime" do
      expect(@blueray.runtime).to eq (120)
    end

    it "should be assigned a director" do
      expect(@blueray.director).to eq("Bobby")
    end

    it "should be assigned a producer" do
      expect(@blueray.producer).to eq("Tables")
    end
  end

  # check getters and setters
  describe "Getters and setters" do
    it "assigns a name" do
      @blueray.name = "Wallie"
      expect(@blueray.name).to eq("Wallie")
    end

    it "assigns a price" do
      @blueray.price = 2
      expect(@blueray.price).to eq (2)
    end

    it "assigns a runtime" do
      @blueray.runtime  = 100
      expect(@blueray.runtime).to eq 100
    end

    it "assigns a director" do
      @blueray.director = "Susan"
      expect(@blueray.director).to eq ("Susan")
    end

    it "assigns a producer" do
      @blueray.producer = "FOX"
      expect(@blueray.producer).to eq("FOX")
    end
  end

  # check methods
  describe "Methods" do
    it "should be able to stock" do
      result = @blueray.stock(5)
      expect(result).to eq(true)
      expect(@blueray.quantity).to eq(5)
    end
    it "should be able to sell" do
      result = @blueray.sell(2)
      expect(result).to eq(true)
      expect(@blueray.quantity).to eq(3)
    end

    it "should not sell if no quantity" do
      result = @blueray.sell(5)
      expect(result).to eq(false)
      expect(@blueray.quantity).to eq(3)
    end
  end
end

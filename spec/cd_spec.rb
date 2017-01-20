require_relative 'spec_helper'
require './lib/cd'

describe Cd do
  before(:context) do
    # initialize item
    @new_cd = Cd.new("Ship", 10, 12, "Modest Mouse", 60)
  end

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Cd
  describe "Initialization" do
    it "should be a CD" do
      expect(@new_cd).to be_instance_of(Cd)
    end

    it "should be an item" do
      expect(@new_cd).to be_kind_of(Item)
    end

    it "should be assigned a name" do
      expect(@new_cd.name).to eq("Ship")
    end

    it "should be assigned a price" do
      expect(@new_cd.price).to eq(10)
    end

    it "should be assigned a number of tracks" do
      expect(@new_cd.tracks).to eq(12)
    end

    it "should be assigned an artist" do
      expect(@new_cd.artist).to eq "Modest Mouse"
    end

    it "should be assigned a runtime" do
      expect(@new_cd.runtime).to eq(60)
    end
  end
  # check getters and setters
  describe "Getters and setters" do
    it "assigns and reads a name" do
      @new_cd.name = "Whale"
      expect(@new_cd.name).to eq "Whale"
    end

    it "assigns and reads a price" do
      @new_cd.price = 20
      expect(@new_cd.price).to eq 20
    end

    it "assigned and reads tracks" do
      @new_cd.tracks = 48
      expect(@new_cd.tracks).to eq 48
    end

    it "assigns and reads artist" do
      @new_cd.artist = "Pirates"
      expect(@new_cd.artist).to eq "Pirates"
    end

    it "assigns and reads runtime" do
      @new_cd.runtime = 200
      expect(@new_cd.runtime).to eq 200
    end
  end

  # check methods
  describe "Methods" do
    it "should be able to stock" do
      result = @new_cd.stock(5)
      expect(result).to eq(true)
      expect(@new_cd.quantity).to eq 5
    end
    it "should be able to sell" do
      result = @new_cd.sell(2)
      expect(result).to eq(true)
      expect(@new_cd.quantity).to eq(3)
    end

    it "should not sell if no quantity" do
      result = @new_cd.sell(5)
      expect(result).to eq(false)
      expect(@new_cd.quantity).to eq(3)
    end
  end
end

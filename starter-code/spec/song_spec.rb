require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new("Generic Item",1.99, "The Beatles", 35)
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@song).to be_a(Item)
    end
    it "is an instance of the DigitalItem class" do
      expect(@song).to be_a(DigitalItem)
    end
    it "is extended from Item" do
      expect(@song).to be_an(Item)
    end
    it "is an instance of Song" do
      expect(@song).to be_instance_of(Song)
    end
  end

  describe "Accessors" do
    it "should be able to get and set Artist" do
      @song.artist="Pink Floyd"
      expect(@song.artist).to eq("Pink Floyd")
    end
    it "should be able to get and set name" do
      @song.name="New Name"
      expect(@song.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @song.price=44.99
      expect(@song.price).to eq(44.99)
    end
  end

end
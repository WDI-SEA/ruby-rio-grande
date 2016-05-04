require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new("Formation", 1.99, 1, 3, "Beyonce")
  end

  describe "Initialization" do
  	it "is an instance of the DigitalItem class" do
  		expect(@song).to be_instance_of(Song)
    end
    it "is assigned a name" do
      expect(@song.name).to eq("Formation")
    end
    it "is assigned a price" do
      expect(@song.price).to eq(1.99)
    end
  end

  describe "Inheritance" do
    it "should extend DigitalItem" do
      expect(song).to be < DigitalItem
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @song.name="New Name"
      expect(@song.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @song.price=44.99
      expect(@song.price).to eq(44.99)
    end
    it "should be able to get and set artist" do
      expect(@song.artist).to eq("Beyonce")
      @song.artist="Not Beyonce"
      expect(@song.artist).to eq("Not Beyonce")
    end
    it "should be able to get and set runtime" do
      expect(@song.runtime).to eq(3)
      @song.runtime=4
      expect(@song.runtime).to eq(4)
    end
  end

  describe "Methods" do
    it "should be able to get weight" do
      expect(@digital_item.weight).to eq(-1)
    end
  end
end

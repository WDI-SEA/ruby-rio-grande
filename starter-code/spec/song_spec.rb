require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new "Song Title", 6.99, "3 minutes", "Artist Name"
  end

  #check initialization
  describe "Initialization" do
    #check that it is an instance of Song
    it "is an instance of the Song class" do
      expect(@song).to be_instance_of(Song)
    end
    #check that it is an extended from DigitalItem
    it "extends from the DigitalItem class" do
      expect(Song).to be < DigitalItem
    end
    
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get and set name" do
      @song.name = "New Title"
      expect(@song.name).to eq("New Title")
    end
    it "should be able to get and set price" do
      @song.price = 10.00
      expect(@song.price).to eq(10.00)
    end
    it "should be able to get and set run_time" do
      @song.run_time = "4 minutes"
      expect(@song.run_time).to eq("4 minutes")
    end
    it "should be able to get and set artist" do
      @song.artist = "New Artist"
      expect(@song.artist).to eq("New Artist")
    end
  end

  describe "Methods" do
    it "quanity should always be 1" do
      expect(@song.quantity).to eq(1)
    end
    it "should not decrease quanity when sold" do
      result = @song.sell 3
      expect(result).to eq(true)
      expect(@song.quantity).to eq(1)
      expect(@song.quantity).not_to be < 1

    end
    it "should not increase quanity when stocked" do
      result = @song.stock(10)
      expect(result).to eq(true)
      expect(@song.quantity).to eq(1)
    end
  end

end

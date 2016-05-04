require_relative 'spec_helper'
require_relative '../lib/DigitalItem'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new("Pendulum",1.29,5,"After the Burial")
  end


  describe "Initialization" do
    it "Song to be inherited from Digital" do
      expect(Song).to be < Digital 
    end
     it "is assigned a title" do
      expect(@song.name).to eq("Pendulum")
    end
    it "is assigned a price" do
      expect(@song.price).to eq(1.29)
    end
    it "is assigned a runtime" do
      expect(@song.runtime).to eq(5)
    end
    it "is assigned an artist" do
      expect(@song.artist).to eq("After the Burial")
    end
  end

  describe "Accessors" do
    it "should be able to get and set runtime" do
      @song.runtime=5
      expect(@song.runtime).to eq(5)
    end
    it "should be able to get and set artist" do
      @song.artist="After the Burial"
      expect(@song.artist).to eq("After the Burial")
    end
  end
end
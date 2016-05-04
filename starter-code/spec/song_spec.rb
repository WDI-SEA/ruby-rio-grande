require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    #initialize item
    @song = Song.new( "runtime", "artist")
  end

  #check initialization
  describe 'Initialization' do
    it "is an instance of the Item class" do
      expect(@song).to be_a(Song)
    end
  end
  #check that it is an extended from Item
    describe 'Extension' do
      it "is extended from DigitalItem" do
        expect(@song).to be_an(DigitalItem)
      end
    end
  #check that it is an instance of Movie
    describe 'Instance' do
    it "is an instance of the DigitalItem class" do
      expect(@song).to be_instance_of(Song)
    end
  end
  #check getters and setters
  describe 'Accessors' do
    it "should be able to set/get runtime" do
      @song.runtime = 75
      expect(@song.runtime).to eq(75)
    end  
    it "should be able to set/get artist" do
      @song.artist = "Prince"
      expect(@song.artist).to eq("Prince")
    end
  end

end


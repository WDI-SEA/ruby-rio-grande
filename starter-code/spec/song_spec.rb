require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do  

  before(:context) do
    @song = Song.new("Formation", 1.99, 3, "Beyonce")
  end

  #check initialization
  #check that it is an extended from DigitalItem
  #check that it is an instance of Ebook

  describe 'Initialization' do
      it "should be a song" do 
        expect(@song).to be_instance_of(Song)
      end

      it "should be a Digital Item" do
        expect(@song).to be_kind_of(DigitalItem)
      end

      it "is assigned a name" do
        expect(@song.name).to eq("Formation")
      end

      it "is assigned a price" do
        expect(@song.price).to eq(1.99)
      end

      it "is assigend a run time" do
        expect(@song.run_time).to eq(3)
      end

      it "is assigned an artist" do
        expect(@song.artist).to eq("Beyonce")
      end
  end

  #check getters and setters
  describe 'getters and setters' do
      it 'assigns and reads the run_time' do
        @song.run_time = 9
        expect(@song.run_time).to eq(9) 
      end

      it 'assigns and reads the artist' do
        @song.artist = "Waka Flocka Flame"
        expect(@song.artist).to eq("Waka Flocka Flame")
      end
  end
end


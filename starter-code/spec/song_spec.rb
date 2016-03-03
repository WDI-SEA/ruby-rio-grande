require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    #initialize item
    @song = Song.new("Greatest Hits", 15, "JLo", 40)
  end

  #check initialization
  describe 'Initialization of song complete' do
    it 'should be a song' do
      expect(@song).to be_instance_of(Song)
    end
    it "should be an item" do
      expect(@song).to be_kind_of(Item)
    end
    it "should be a digital item" do
      expect(@song).to be_kind_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@song.name).to eq("Greatest Hits")
    end
    it "is assigned a price" do
      expect(@song.price).to eq(15.00)
    end
    it "is assigned an artist" do
      expect(@song.artist).to eq("JLo")
    end
    it "is assigned a run time" do
      expect(@song.run_time).to eq(40)
    end
  end
  #check getters and setters
  describe 'Checking getters and setters' do
    it 'assigns and reads the name' do
      @song.name = 'Worst Hits'
      expect(@song.name).to eq('Worst Hits')
    end
    it 'assigns and reads the price' do
      @song.price = 20.00
      expect(@song.price).to eq(20.00)
    end
    it 'assigns and reads the artist' do
      @song.artist = "Beach House"
      expect(@song.artist).to eq("Beach House")
    end
    it 'assigns and reads the run_time' do
      @song.run_time = 50
      expect(@song.run_time).to eq(50)
    end
end
  #check that it is an extended from Item
  #check that it is an instance of song
  #check getters and setters

end
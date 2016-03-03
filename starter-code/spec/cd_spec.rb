require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new("Greatest Hits", 15, 10, "JLo", 40)
  end

  #check initialization
  describe 'Initialization of CD complete' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end
    it "should be an item" do
      expect(@cd).to be_kind_of(Item)
    end
    it "is assigned a name" do
      expect(@cd.name).to eq("Greatest Hits")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(15.00)
    end
    it "is assigned some tracks" do
      expect(@cd.tracks).to eq(10)
    end
    it "is assigned an artist" do
      expect(@cd.artist).to eq("JLo")
    end
    it "is assigned a run time" do
      expect(@cd.run_time).to eq(40)
    end
  end
  #check getters and setters
  describe 'Checking getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Worst Hits'
      expect(@cd.name).to eq('Worst Hits')
    end
    it 'assigns and reads the price' do
      @cd.price = 20.00
      expect(@cd.price).to eq(20.00)
    end
    it 'assigns and reads the artist' do
      @cd.artist = "Beach House"
      expect(@cd.artist).to eq("Beach House")
    end
    it 'assigns and reads the tracks' do
      @cd.tracks = 15
      expect(@cd.tracks).to eq(15)
    end
    it 'assigns and reads the run_time' do
      @cd.run_time = 50
      expect(@cd.run_time).to eq(50)
    end
end
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end


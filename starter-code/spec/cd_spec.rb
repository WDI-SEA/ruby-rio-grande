require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new("Beyonce", 13.00, 13, "Beyonce", 66)
  end

  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  describe 'Initialization' do
    it "should be a Cd" do
      expect(@cd).to be_instance_of(Cd)
    end 

    it "should be an item" do
      expect(@cd).to be_kind_of(Item)
    end 

    it "is assigned a name" do
      expect(@cd.name).to eq("Beyonce")
    end

    it "is assigned a price" do
      expect(@cd.price).to eq(13.00)
    end 

    it "is assigned tracks" do
      expect(@cd.tracks).to eq(13)
    end

    it "is assigned artist" do
      expect(@cd.artist).to eq("Beyonce")
    end

    it "is assigned run_time" do
      expect(@cd.run_time).to eq(66)
    end 
end

  #check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the tracks' do
      @cd.tracks = 15
      expect(@cd.tracks).to eq(15)
    end

    it 'assigns and reads the artist' do
      @cd.artist = 'Tinashe'
      expect(@cd.artist).to eq('Tinashe')
    end

    it 'assigns and reads the run time' do
      @cd.tracks = 40
      expect(@cd.tracks).to eq(40) 
    end
  end
end 


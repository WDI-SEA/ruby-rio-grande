require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new("Name", 20, 12, "Artist", 35)
  end

  #check initialization
  describe 'Initialization' do
    it "is an instance of the Item class" do
      expect(@cd).to be_a(Item)
    end
  end
  #check that it is an extended from Item
  describe 'Extension' do
      it "is extended from Item" do
        expect(@cd).to be_an(Item)
      end
    end
  #check that it is an instance of Cd
  describe 'Instance' do
    it "is an instance of the CD class" do
      expect(@cd).to be_instance_of(Cd)
    end
  end
  #check getters and setters
  describe 'Accessors' do
    it "should be able to set/get tracks" do
      @cd.tracks=75
      expect(@cd.tracks).to eq(75)
    end
    it "should be able to set/get artist" do
      @cd.artist="New Name"
      expect(@cd.artist).to eq("New Name")
    end
    it "should be able to set/get runtime" do
      @cd.runtime = 200
      expect(@cd.runtime).to eq(200)
    end
    end 
end


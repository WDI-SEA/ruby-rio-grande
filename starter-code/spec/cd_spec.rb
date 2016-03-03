require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new("Back in Black", 12.00, 12, "AC/DC", "1 Hour")
  end

  #check initialization
  describe 'Initialized' do
    #check that it is an instance of Book
    it 'should be a CD' do
      expect(@cd).to be_instance_of(Cd)
    end
    #check that it is an extended from Item
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end
    it "is assigned a name" do
      expect(@cd.name).to eq("Back in Black")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(12.00)
    end
    it "is assigned tracks" do
      expect(@cd.tracks).to eq(12)
    end
    it "is assigned an artist" do
      expect(@cd.artist).to eq("AC/DC")
    end 
    it "is assigned a runtime" do
      expect(@cd.runtime).to eq("1 Hour")
    end 
  end
  #check getters and setters
  describe 'accessors' do
    it 'assigns and reads the name' do
      @cd.name = 'Frozen'
      expect(@cd.name).to eq('Frozen')
    end
    it 'assigns and reads the price' do
      @cd.price = 10.00
      expect(@cd.price).to eq(10.00)
    end
    it 'assigns and reads the tracks' do
      @cd.tracks = 8
      expect(@cd.tracks).to eq(8)
    end
    it 'assigns and reads the author' do
      @cd.artist = 'Disney'
      expect(@cd.artist).to eq('Disney')
    end
    it 'assigns and reads the runtime' do
      @cd.runtime = 'Too long'
      expect(@cd.runtime).to eq('Too long')
    end
  end
end

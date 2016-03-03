require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    #initialize item
    @song = Song.new("Greatest Hits", 15.00, "JLo", 40)
  end

  #check initialization
  describe 'initialization ' do
    it 'should be a cd' do
      expect(@song).to be_instance_of(Song)
    end
    it 'should be an item' do
      expect(@song).to be_kind_of(Item)
    end
    it 'should be an item' do
      expect(@song).to be_kind_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@song.name).to eq("Greatest Hits")
    end
    it "is assigned a price" do
      expect(@song.price).to eq(15.00)
    end
    it "is assigned artist" do
      expect(@song.artist).to eq("JLo")
    end
    it "is assigned runtime" do
      expect(@song.run_time).to eq(40)
    end
  end  
  #check getters and setters
    describe "getters and setters" do
    it 'assigns and reads name' do
      @song.name = "Worst Hits"
      expect(@song.name).to eq('Worst Hits')
    end
    it 'assigns and reads price' do
      @song.price = 12.00
      expect(@song.price).to eq(12.00)
    end
    it 'assigns and reads name' do
      @song.artist = "Justin Beiber"
      expect(@song.artist).to eq('Justin Beiber')
    end  
    it 'assigns and reads name' do
      @song.run_time = 10
      expect(@song.run_time).to eq(10)
    end      
  end
end

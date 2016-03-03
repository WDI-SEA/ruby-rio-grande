require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new("Greatest Hits", 15.00, 10, "JLo", 40)
  end

  #check initialization
  describe 'initialization ' do
    it 'should be a cd' do
      expect(@cd).to be_instance_of(Cd)
    end
    it 'should be an item' do
      expect(@cd).to be_kind_of(Item)
    end
    it "is assigned a name" do
      expect(@cd.name).to eq("Greatest Hits")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(15.00)
    end
    it "is assigned tracks " do  
      expect(@cd.tracks).to eq(10)
    end
    it "is assigned artist" do
      expect(@cd.artist).to eq("JLo")
    end
    it "is assigned runtime" do
      expect(@cd.run_time).to eq(40)
    end
  end  
  #check getters and setters
    describe "getters and setters" do
    it 'assigns and reads name' do
      @cd.name = "Worst Hits"
      expect(@cd.name).to eq('Worst Hits')
    end
    it 'assigns and reads price' do
      @cd.price = 12.00
      expect(@cd.price).to eq(12.00)
    end
    it 'assigns and reads tracks' do
      @cd.tracks = 0
      expect(@cd.tracks).to eq(0)
    end
    it 'assigns and reads name' do
      @cd.artist = "Justin Beiber"
      expect(@cd.artist).to eq('Justin Beiber')
    end  
    it 'assigns and reads name' do
      @cd.run_time = 10
      expect(@cd.run_time).to eq(10)
    end      
  end
end

require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new("Name", 20, 35, "Director", "Producer")
  end

  #check initialization
  describe 'Initialization' do
    it "is an instance of the Item class" do
      expect(@bluray).to be_a(Item)
    end
  end
  #check that it is an extended from Item
    describe 'Extension' do
      it "is extended from Item" do
        expect(@bluray).to be_an(Item)
      end
    end
  #check that it is an instance of Bluray
    describe 'Instance' do
    it "is an instance of the Bluray class" do
      expect(@bluray).to be_instance_of(Bluray)
    end
  end
  #check getters and setters
  describe 'Accessors' do
    it "should be able to set/get runtime" do
      @bluray.runtime=75
      expect(@bluray.runtime).to eq(75)
    end
    it "should be able to set/get director" do
      @bluray.director="New Name"
      expect(@bluray.director).to eq("New Name")
    end
    it "should be able to set/get producer" do
      @bluray.producer = 200
      expect(@bluray.producer).to eq(200)
    end
    end 

end


  # * Run time
  # * Director
  # * Producer
require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new("Star Wars", 29.99, "Two hours", "Bob", "Joe")
  end

  #check initialization
  describe 'Initialized' do
    #check that it is an instance of Book
    it 'should be a Bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    #check that it is an extended from Item
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end
    it "is assigned a name" do
      expect(@bluray.name).to eq("Star Wars")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(29.99)
    end
    it "is assigned a runtime" do
      expect(@bluray.runtime).to eq("Two hours")
    end
    it "is assigned a director" do
      expect(@bluray.director).to eq("Bob")
    end 
    it "is assigned a producer" do
      expect(@bluray.producer).to eq("Joe")
    end 
  end
  #check getters and setters
  describe 'accessors' do
    it 'assigns and reads the name' do
      @bluray.name = 'Frozen'
      expect(@bluray.name).to eq('Frozen')
    end
    it 'assigns and reads the price' do
      @bluray.price = 10.00
      expect(@bluray.price).to eq(10.00)
    end
    it 'assigns and reads the runtime' do
      @bluray.runtime = "1.5 hours"
      expect(@bluray.runtime).to eq("1.5 hours")
    end
    it 'assigns and reads the director' do
      @bluray.director = 'Sue'
      expect(@bluray.director).to eq('Sue')
    end
    it 'assigns and reads the producer' do
      @bluray.producer = 'Satan'
      expect(@bluray.producer).to eq('Satan')
    end
  end
end

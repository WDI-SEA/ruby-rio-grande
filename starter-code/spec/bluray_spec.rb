require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new('The Crow', 19.99, 102, "Alex Proyas", "Edward R Pressman")
  end

  describe 'initialization' do
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it "is assigned a name" do
      expect(@bluray.name).to eq("The Crow")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(19.99)
    end
    it "is assigned run time" do
      expect(@bluray.run_time).to eq(102)
    end
    it "is assigned director" do
      expect(@bluray.director).to eq("Alex Proyas")
    end
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end
    it 'should have a producer' do
      expect(@bluray.producer).to eq("Edward R Pressman")
    end
  end

  describe 'accessors' do
    it 'assigns and reads the name' do
      @bluray.name = 'The Dark Knight'
      expect(@bluray.name).to eq('The Dark Knight')
    end
    it 'price is read and changed' do
      @bluray.price = 26.00
      expect(@bluray.price).to eq(26.00)
    end
    it 'director can be read and changed' do
      @bluray.director = 'Christopher Nolan'
      expect(@bluray.director).to eq('Christopher Nolan')
    end
  end
end

require_relative 'spec_helper'
require './lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Mad Max: Fury Road', 29.00, '120 min', 'Ridley Scott', 'George Miller')
  end

  # check initialization
  describe 'initialization' do
    # check that it is an extended from Item
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end
    # check that it is an instance of Bluray
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    # check that it has the correct name
    it 'is assigned a name' do
      expect(@bluray.name).to eq('Mad Max: Fury Road')
    end
    # check that has price 
    it 'is assigned a price' do
      expect(@bluray.price).to eq(29.00)
    end
    # check that has run_time
    it 'is assigned a run_time' do
      expect(@bluray.run_time).to eq('120 min')
    end
    # check that has director
    it 'is assigned a director' do
      expect(@bluray.director).to eq('Ridley Scott')
    end
    # check that has producer
    it 'is assigned a producer' do
      expect(@bluray.producer).to eq('George Miller')
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd.name = 'Mad Max: Fury Road'
      expect(@cd.name).to eq('Mad Max: Fury Road')
    end

    it 'assigns and reads the price' do
      @bluray.price = 29.00
      expect(@bluray.price).to eq(29.00)
    end

    it 'assigns and reads the run_time' do
      @bluray.run_time = '120 min'
      expect(@bluray.run_time).to eq('120 min')
    end 

    it 'assigns and reads the director' do
      @bluray.director = 'Ridley Scott'
    end

    it 'assigns and reads the producer' do
      @bluray.producer = 'George Miller'
    end
  end

  describe 'Methods' do 
    it "should be able to stock" do
      result = @bluray.stock 5
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(5)
    end
    it 'should not be able to sell more items than are in stock' do
      result = @bluray.sell 7
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(6)
    end
    it 'should be able to sell items and update quantity' do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(2)
    end
  end
end

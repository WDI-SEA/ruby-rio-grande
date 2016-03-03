require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new('Madagascar', 10, 120, 'Me', 'Alexa')
  end

  #check initialization
  describe 'initialization' do

    #check that it is an extended from Item
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    #check that it is an instance of Bluray
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    #check name
    it 'should have a name' do
      expect(@bluray.name).to eq('Madagascar')
    end

    #check price
    it 'should have a price' do
      expect(@bluray.price).to eq(10)
    end

    #check run time
    it 'should have a run time' do
      expect(@bluray.run_time).to eq(120)
    end
    
    #check director
    it 'should have a director' do
      expect(@bluray.director).to eq('Me')
    end

    #check producer
    it 'should have a producer' do
      expect(@bluray.producer).to eq('Alexa')
    end
  end
  
  #check getters and setters
  describe 'getters and setters' do
    
    it 'assigns and reads the name' do
      @bluray.name = 'Harry Potter'
      expect(@bluray.name).to eq('Harry Potter')
    end

    it 'assigns and reads the price' do
      @bluray.price = 20
      expect(@bluray.price).to eq(20)
    end

    it 'assigns and reads the run time' do
      @bluray.run_time = 220
      expect(@bluray.run_time).to eq(220)
    end

    it 'assigns and reads the director' do
      @bluray.director = 'JK Rowling'
      expect(@bluray.director).to eq('JK Rowling')
    end

    it 'assigns and reads the producer' do
      @bluray.producer = 'Ron Weasly'
      expect(@bluray.producer).to eq('Ron Weasly')
    end
  end
end

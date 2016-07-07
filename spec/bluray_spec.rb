require_relative 'spec_helper'
require './lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Boondock Saints', 25.00, '01:50:00', 'Troy Duffy', 'Chris Brinker')
  end

  # check initialization
  describe 'Initialization' do

  # check that it is an instance of Bluray
    it 'should be a Bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end

  # check that it is an extended from Item
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Boondock Saints')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(25.00)
    end

    it 'is assigned a run time' do
      expect(@bluray.run_time).to eq('01:50:00')
    end

    it 'is assigned a director' do
      expect(@bluray.director).to eq('Troy Duffy')
    end

    it 'is assinged a producer' do
      expect(@bluray.producer).to eq('Chris Brinker')
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Boondock Saints'
      expect(@bluray.name).to eq('Boondock Saints')
    end

    it 'assigns and reads the price' do
      @bluray.price = 25.00
      expect(@bluray.price).to eq(25.00)
    end

    it 'assigns and read the run time' do
      @bluray.run_time = '01:50:00'
      expect(@bluray.run_time).to eq('01:50:00')
    end

    it 'assigns and reads the director' do
      @bluray.director = 'Troy Duffy'
      expect(@bluray.director).to eq('Troy Duffy')
    end

    it 'assigns and reads the producer' do
      @bluray.producer = 'Chris Brinker'
      expect(@bluray.producer).to eq('Chris Brinker')
    end
  end

  # check methods
    describe 'Methods' do
    it 'should be able to stock' do
      result = @bluray.stock 5
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(5)
    end
    it 'should not be able to sell more items than we have' do
      result = @bluray.sell 6
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(5)
    end
    it 'should be able to sell items and update quantity' do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(2)
    end
  end
end

require_relative 'spec_helper'
require './lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Nemo', 14, 148, 'Fred', 'MGM')
  end

  describe 'Initialization' do
    # check initialization
    it 'Should be an extension of Item' do
      expect(@bluray).to be_kind_of(Item)
    end
    # check that it is an extended from Item
    # check that it is an instance of Bluray
    it 'Should be an instance of Bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it 'Should be assigned a name' do
      expect(@bluray.name).to eq 'Nemo'
    end
    it 'Should be assigned a price' do
      expect(@bluray.price).to eq 14
    end
    it 'Should be assigned a director' do
      expect(@bluray.director).to eq 'Fred'
    end
    it 'Should be assigned a producer' do
      expect(@bluray.producer).to eq 'MGM'
    end
  end

  describe 'Getters and Setters' do
    it 'Should assign and get a name' do
      @bluray.name = 'Dori'
      expect(@bluray.name).to eq 'Dori'
    end
    it 'Should assign and get a price' do
      @bluray.price = 18
      expect(@bluray.price).to eq 18
    end
    it 'Should assign and get a run-time' do
      @bluray.run_time = 481
      expect(@bluray.run_time).to eq 481
    end
    it 'Should assign and get a director' do
      @bluray.director = 'Wilma'
      expect(@bluray.director).to eq 'Wilma'
    end
    it 'Should assign and get a producer' do
      @bluray.producer = 'FOX'
      expect(@bluray.producer).to eq 'FOX'
    end
  end

  describe 'Methods' do
    it 'Should be able to add stock' do
      result = @bluray.stock 14
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(14)
    end
    it 'Should not be able to sell more items than in stock' do
      result = @bluray.sell 15
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(14)
    end
    it 'Should be able to sell items and update quantity' do
      result = @bluray.sell 13
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(1)
    end
  end
end

require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Blue Ocean', 20, 69, 'Director Man', 'Producer Man')
  end

  describe 'Initialization' do
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it 'should be extended from item' do
      expect(@bluray).to be_kind_of(Item)
    end
    it 'is assigned a name' do
      expect(@bluray.name).to eq('Blue Ocean')
    end
    it 'is assigned a price' do
      expect(@bluray.price).to eq(20)
    end
    it 'is assigned a run_time' do
      expect(@bluray.run_time).to eq(69)
    end
    it 'is assigned a director' do
      expect(@bluray.director).to eq('Director Man')
    end
    it 'is assigned a producer' do
      expect(@bluray.producer).to eq('Producer Man')
    end
  end

  describe 'Getters and Setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Test name'
      expect(@bluray.name).to eq('Test name')
    end
    it 'assigns and reads the price' do
      @bluray.price = 9999
      expect(@bluray.price).to eq(9999)
    end
    it 'assigns and reads the run_time' do
      @bluray.run_time = 1234
      expect(@bluray.run_time).to eq(1234)
    end
    it 'assigns and reads the producer' do
      @bluray.producer = 'Dank Man'
      expect(@bluray.producer).to eq('Dank Man')
    end
    it 'assigns and reads the director' do
      @bluray.director = 'Dank Dude'
      expect(@bluray.director).to eq('Dank Dude')
    end
  end
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

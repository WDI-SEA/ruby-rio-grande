require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    @bluray = Bluray.new('Spaceballs', 15, 183, 'Mel Brooks', 'Mel Brooks')
  end
  
  describe "Initialization" do
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Spaceballs')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(15)
    end
  end

  # check getters and setters
  describe 'Accessors' do
    it 'should be able to get and set run time' do
      @bluray.run_time = 189
      expect(@bluray.run_time).to eq(189)
    end

    it 'should be able to get and set producer' do
      @bluray.producer = 'Mel Brooks'
      expect(@bluray.producer).to eq('Mel Brooks')
    end

    it 'should be able to get and set director' do
      @bluray.director = 'Mel Brooks'
      expect(@bluray.director).to eq('Mel Brooks')
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
  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Bluray
  # check getters and setters
end

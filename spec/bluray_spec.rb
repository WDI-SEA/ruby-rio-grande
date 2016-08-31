require_relative 'spec_helper'
require_relative '../src/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('TRON: Legacy', 15.00, '125:00', 'Joseph Kosinski', 'Sean Bailey')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end
    # check that it is an extended from Item
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('TRON: Legacy')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(15.00)
    end

    it 'is assigned runtime' do
      expect(@bluray.runtime).to eq('125:00')
    end

    it 'is assigned an director' do
      expect(@bluray.director).to eq('Joseph Kosinski')
    end
    it 'is assigned an producer' do
      expect(@bluray.producer).to eq('Sean Bailey')
    end
  end


  # check getters and setters
    describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Paradise Lost'
      expect(@bluray.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @bluray.price = 20.00
      expect(@bluray.price).to eq(20.00)
    end

    it 'assigns and reads the runtime' do
      @bluray.runtime = '11:11'
      expect(@bluray.runtime).to eq('11:11')
    end

    it 'assigns and reads the director' do
      @bluray.director = 'John Milton'
      expect(@bluray.director).to eq('John Milton')
    end

    it 'assigns and reads the producer' do
      @bluray.producer = 'Mike'
      expect(@bluray.producer).to eq('Mike')
    end
  end

  #methods
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

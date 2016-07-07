require_relative 'spec_helper'
require './lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('Some Movie', 20, 120, 'Bob', 'Steve')
  end

# run_time, director, producer

  # check initialization
  # check that it is an extended from Item
  # check that it is an instance of Bluray
  # check getters and setters

  describe 'initialization' do
    it 'It is a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end

    it 'should be a bluray' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('Some Movie')
    end

    it 'is assign a price' do
      expect(@bluray.price).to eq(20)
    end

    it 'has a run time' do
      expect(@bluray.run_time).to eq(120)
    end

    it 'has a director' do
      expect(@bluray.director).to eq('Bob')
    end

    it 'has a producer' do
      expect(@bluray.producer).to eq('Steve')
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads a name' do
      @bluray.name = 'Cool Movie'
      expect(@bluray.name).to eq('Cool Movie')
    end

    it 'assigns an reads a price' do
      @bluray.price = 25
      expect(@bluray.price).to eq(25)
    end

    it 'assigns and reads the run time' do
      @bluray.run_time = 150
      expect(@bluray.run_time).to eq(150)
    end

    it 'assigns and reads a director' do
      @bluray.director = 'John'
      expect(@bluray.director).to eq('John')
    end

    it 'assigns and reads a producer' do
      @bluray.producer = 'Billy'
      expect(@bluray.producer).to eq('Billy')
    end
  end

describe "Methods" do
    it "should be able to stock" do
      result = @bluray.stock 5
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @bluray.sell 6
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(2)
    end
  end
end

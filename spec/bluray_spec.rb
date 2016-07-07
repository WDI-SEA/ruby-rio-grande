require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('American Beauty', 18.00, 180, 'Sam Mendes', 'Kevin Spacey')
  end

  # check initialization
  describe 'Initialization' do
  # check that it is an instance of Bluray
    it 'should be a bluray' do
      expect(@bluray).to be_instance_of(Bluray)
    end


  # check that it is an extended from Item
    it 'should be an item' do
      expect(@bluray).to be_kind_of(Item)
    end

    it 'is assigned a name' do
      expect(@bluray.name).to eq('American Beauty')
    end

    it 'is assigned a price' do
      expect(@bluray.price).to eq(18)
    end

    it 'is assigned a run time' do
      expect(@bluray.run_time).to eq(180)
    end

    it 'is assigned a director' do
      expect(@bluray.director).to eq('Sam Mendes')
    end

    it 'is assigned a producer' do
      expect(@bluray.producer).to eq('Kevin Spacey')
    end
  end

  # check getters and setters

  describe 'getters and setters' do
    it 'assigns and reads name' do
      @bluray.name = 'Avengers'
      expect(@bluray.name).to eq('Avengers')
    end

    it 'assigns and reads price' do
      @bluray.price = 22.00
      expect(@bluray.price).to eq(22.00)
    end

    it 'assigns and reads run_time' do
      @bluray.run_time = 180
      expect(@bluray.run_time).to eq(180)
    end

    it 'assigns and reads director' do
      @bluray.director = 'Joss Whedon'
      expect(@bluray.director).to eq('Joss Whedon')
    end

    it 'assigns and reads producer' do
      @bluray.producer = 'Jeb Whedon'
      expect(@bluray.producer).to eq('Jeb Whedon')
    end
  end

  describe 'Methods' do
    it 'should be able to stock' do
      result = @bluray.stock 5
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(5)
    end
    it 'should not be able to sell more blurays than we have' do
      result = @bluray.sell 6
      expect(result).to eq(false)
      expect(@bluray.quantity).to eq(5)
    end
    it 'should be able to sell blurays and update quantity' do
      result = @bluray.sell 3
      expect(result).to eq(true)
      expect(@bluray.quantity).to eq(2)
    end
  end
end

require_relative 'spec_helper'
require_relative '../lib/Song.rb'

describe Song do
  
  before(:context) do
    @song = Song.new('Panic Switch', 0.99, 543, 'Silversun Pickups')
  end

  describe 'initialization' do
    it 'should be a song, digital item, and item' do
      expect(@song).to be_instance_of(Song)
      expect(@song).to be_kind_of(Digital)
      expect(@song).to be_kind_of(Item)
    end
    it 'should have the properties it was given' do
      expect(@song.name).to eq('Panic Switch')
      expect(@song.price).to eq(0.99)
      expect(@song.artist).to eq('Silversun Pickups')
    end
  end

  describe 'accessors' do
    it 'should be able to change the data' do
      @song.name = 'Where in the World is Carmen Sandiego'
      @song.artist = 'Rockapella'
      expect(@song.name).to eq('Where in the World is Carmen Sandiego')
      expect(@song.artist).to eq('Rockapella')
      expect(@song.price).to eq(0.99)
    end
  end

  describe 'method' do
    it 'should be able to take returns, no impact on inventory' do
      result = @song.return 5
      expect(result).to eq(true)
      expect(@song.quantity).to eq(1)
    end
  end
end
require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do
  before(:context) do
    @song = Song.new('Happy', 15, 4, 'Bob')
  end
  
  describe 'initialize' do
    it 'should be a song' do
      expect(@song).to be_instance_of(Song)
    end
    
    it 'should be a digital item' do
      expect(@song).to be_kind_of(Digital)
    end

    it 'should have a name' do
      expect(@song.name).to eq('Happy')
    end

    it 'should have a price' do
      expect(@song.price).to eq(15)
    end

    it 'should have a run time' do
      expect(@song.run_time).to eq(4)
    end

    it 'should have a artist' do
      expect(@song.artist).to eq('Bob')
    end
  end

  describe 'selling and stocking' do

    it 'should remain quantity 1 after sell' do
      @song.sell(20)
      expect(@song.quantity).to eq(1)
    end

    it 'should remain quantity 1 after stock' do
      @song.stock(10)
      expect(@song.quantity).to eq(1)
    end
  end

  describe 'getting and setting' do

    it 'assigns and reads name' do
      @song.name = 'Suzy'
      expect(@song.name).to eq('Suzy')
    end

    it 'assigns and reads price' do
      @song.price = 20
      expect(@song.price).to eq(20)
    end

    it 'assigns and reads run time' do
      @song.run_time = 5
      expect(@song.run_time).to eq(5)
    end

    it 'assigns and reads artist' do
      @song.artist = 'Doe'
      expect(@song.artist).to eq('Doe')
    end

    it 'reads quantity' do
      expect(@song.quantity).to eq(1)
    end

  end
end
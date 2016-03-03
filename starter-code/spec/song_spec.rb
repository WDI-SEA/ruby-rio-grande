require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    #initialize item
    @song =Song.new('Pokerface', 0.99, 4, 'Lady Gaga')
  end

  #check initialization
  describe 'Initialization' do
    #check that it is an extended from DigitalItem
    it 'Should be a kind of' do
      expect(@song).to be_kind_of(DigitalItem)
    end
    #check that it is an instance of Movie
    it 'Should be an instance of' do
      expect(@song).to be_instance_of(Song)
    end

    it 'Should have a name' do
      expect(@song.name).to eq('Pokerface')
    end

    it 'Should have a price' do
      expect(@song.price).to eq(0.99)
    end

    it 'Should have a run time' do
      expect(@song.run_time).to eq(4)
    end

    it 'Should have an artist' do
      expect(@song.artist).to eq('Lady Gaga')
    end
  end
  
  
  #check getters and setters
  describe 'Song getters and setters' do

    it 'assign and check name' do
      @song.name = 'Avatar'
      expect(@song.name).to eq('Avatar')
    end

    it 'assign and check price' do
      @song.price = 45
      expect(@song.price).to eq(45)
    end

    it 'assign and check run time' do
      @song.run_time = 500
      expect(@song.run_time).to eq(500)
    end

    it 'assign and check director' do
      @song.artist = 'Spielberg'
      expect(@song.artist).to eq('Spielberg')
    end

  end

end

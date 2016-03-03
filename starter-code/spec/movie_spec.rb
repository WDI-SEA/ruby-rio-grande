require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    #initialize item
    @movie =Movie.new('Iron Man 2', 25, 130, 'John Favreau', 'Evan')
  end

  #check initialization
  describe 'Initialization' do
    #check that it is an extended from DigitalItem
    it 'Sould be a kind of' do
      expect(@movie).to be_kind_of(DigitalItem)
    end
    #check that it is an instance of Movie
    it 'Should be an instance of' do
      expect(@movie).to be_instance_of(Movie)
    end

    it 'Should have a name' do
      expect(@movie.name).to eq('Iron Man 2')
    end

    it 'Should have a price' do
      expect(@movie.price).to eq(25)
    end

    it 'Should have a run time' do
      expect(@movie.run_time).to eq(130)
    end

    it 'Should have a director' do
      expect(@movie.director).to eq('John Favreau')
    end

    it 'Should have a producer' do
      expect(@movie.producer).to eq('Evan')
    end

  end
  
  
  #check getters and setters
  describe 'Movie getters and setters' do

    it 'assign and check name' do
      @movie.name = 'Avatar'
      expect(@movie.name).to eq('Avatar')
    end

    it 'assign and check price' do
      @movie.price = 45
      expect(@movie.price).to eq(45)
    end

    it 'assign and check run time' do
      @movie.run_time = 500
      expect(@movie.run_time).to eq(500)
    end

    it 'assign and check director' do
      @movie.director = 'Spielberg'
      expect(@movie.director).to eq('Spielberg')
    end

    it 'assign and check producer' do
      @movie.producer = 'Lucas'
      expect(@movie.producer).to eq('Lucas')
    end

  end

end

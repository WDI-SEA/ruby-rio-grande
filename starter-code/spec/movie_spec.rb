require_relative 'spec_helper'
require_relative '../lib/Movie.rb'

describe Movie do 

  before(:context) do
    @movie = Movie.new('Up', 15.49, 420, 'Some Director', 'Some Producer')
  end
  
  describe 'initialization' do
    it 'should be a movie' do
      expect(@movie).to be_instance_of(Movie)
    end
    it "is assigned a name" do
      expect(@movie.name).to eq("Up")
    end
    it "is assigned director" do
      expect(@movie.director).to eq("Some Director")
    end
    it 'should have a producer' do
      expect(@movie.producer).to eq("Some Producer")
    end
    it 'should be a digital item' do
      expect(@movie).to be_kind_of(Digital)
    end
    it 'should be an item' do
      expect(@movie).to be_kind_of(Item)
    end
  end

  describe 'accessors' do
    it 'assigns and reads the name' do
      @movie.name = 'The Dark Knight'
      expect(@movie.name).to eq('The Dark Knight')
    end
    it 'price is read and changed' do
      @movie.price = 26.00
      expect(@movie.price).to eq(26.00)
    end
    it 'director can be read and changed' do
      @movie.director = 'Christopher Nolan'
      expect(@movie.director).to eq('Christopher Nolan')
    end
  end

end
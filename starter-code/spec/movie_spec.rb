require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    @movie = Movie.new('Madagascar', 15, 112, 'Tyler', 'Jessie')
  end
  
  describe 'initialize' do
    it 'should be a movie' do
      expect(@movie).to be_instance_of(Movie)
    end
    
    it 'should be a digital item' do
      expect(@movie).to be_kind_of(Digital)
    end

    it 'should have a name' do
      expect(@movie.name).to eq('Madagascar')
    end

    it 'should have a price' do
      expect(@movie.price).to eq(15)
    end

    it 'should have a run time' do
      expect(@movie.run_time).to eq(112)
    end

    it 'should have a director' do
      expect(@movie.director).to eq('Tyler')
    end

    it 'should have a producer' do
      expect(@movie.producer).to eq('Jessie')
    end
  end

  describe 'ship_price, selling, returning, and stocking' do

    it 'should remain quantity 1 after sell' do
      @movie.sell(20)
      expect(@movie.quantity).to eq(1)
    end

    it 'should remain quantity 1 after stock' do
      @movie.stock(10)
      expect(@movie.quantity).to eq(1)
    end

    it 'should not add returned amount to quantity' do
      @movie.return(2)
      expect(@movie.quantity).to eq(1)
    end

    it 'should return ship price' do
      @movie.ship_price
      expect(@movie.ship_price).to eq(false)
    end
  end

  describe 'getting and setting' do

    it 'assigns and reads name' do
      @movie.name = 'Bob'
      expect(@movie.name).to eq('Bob')
    end

    it 'assigns and reads price' do
      @movie.price = 20
      expect(@movie.price).to eq(20)
    end

    it 'assigns and reads run time' do
      @movie.run_time = 300
      expect(@movie.run_time).to eq(300)
    end

    it 'assigns and reads director' do
      @movie.director = 'Amy'
      expect(@movie.director).to eq('Amy')
    end

    it 'assigns and reads producer' do
      @movie.producer = 'Josh'
      expect(@movie.producer).to eq('Josh')
    end

    it 'reads quantity' do
      expect(@movie.quantity).to eq(1)
    end

  end

end
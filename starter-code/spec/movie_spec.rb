require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    #initialize item
    @movie = Movie.new("Speed", 2.00, 90, "Edward Snowden", "Jill Smith")
  end

  #check initialization
  describe 'initialization ' do
    it 'should be a cd' do
      expect(@movie).to be_instance_of(Movie)
    end
    it 'should be an item' do
      expect(@movie).to be_kind_of(Item)
    end
    it 'should be an item' do
      expect(@movie).to be_kind_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@movie.name).to eq("Speed")
    end
    it "is assigned a price" do
      expect(@movie.price).to eq(2.00)
    end
    it "is assigned director " do  
      expect(@movie.director).to eq("Edward Snowden")
    end
    it "is assigned producer" do
      expect(@movie.producer).to eq("Jill Smith")
    end
    it "is assigned runtime" do
      expect(@movie.run_time).to eq(90)
    end
  end  
  #check getters and setters
    describe "getters and setters" do
    it 'assigns and reads name' do
      @movie.name = "Hackers"
      expect(@movie.name).to eq('Hackers')
    end
    it 'assigns and reads price' do
      @movie.price = 12.00
      expect(@movie.price).to eq(12.00)
    end
    it 'assigns and reads director' do
      @movie.director = "Bugs Bunny"
      expect(@movie.director).to eq("Bugs Bunny")
    end
    it 'assigns and reads producer' do
      @movie.producer = "Justin Beiber"
      expect(@movie.producer).to eq('Justin Beiber')
    end  
    it 'assigns and reads runtime' do
      @movie.run_time = 10
      expect(@movie.run_time).to eq(10)
    end      
  end

end

require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    #initialize item
    @movie = Movie.new("Speed", 2, 90, "Edward Snowden", "Jill Smith")
  end

  describe 'Initialization of movie complete' do
    it 'should be a movie' do
      expect(@movie).to be_instance_of(Movie)
    end
    it "should be an item" do
      expect(@movie).to be_kind_of(Item)
    end
    it "should be a digital item" do
      expect(@movie).to be_kind_of(DigitalItem)
    end
    it "is assigned a name" do
      expect(@movie.name).to eq("Speed")
    end
    it "is assigned a price" do
      expect(@movie.price).to eq(2)
    end
    it "is assigned some director" do
      expect(@movie.director).to eq("Edward Snowden")
    end
    it "is assigned an producer" do
      expect(@movie.producer).to eq("Jill Smith")
    end
    it "is assigned a run time" do
      expect(@movie.run_time).to eq(90)
    end
  end
  #check getters and setters
  describe 'Checking getters and setters' do
    it 'assigns and reads the name' do
      @movie.name = 'Hackers'
      expect(@movie.name).to eq('Hackers')
    end
    it 'assigns and reads the price' do
      @movie.price = 100.00
      expect(@movie.price).to eq(100.00)
    end
    it 'assigns and reads the director' do
      @movie.director = "Bugs Bunny"
      expect(@movie.director).to eq("Bugs Bunny")
    end
    it 'assigns and reads the producer' do
      @movie.producer = "John Doe"
      expect(@movie.producer).to eq("John Doe")
    end
    it 'assigns and reads the run_time' do
      @movie.run_time = 50
      expect(@movie.run_time).to eq(50)
    end
end
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end

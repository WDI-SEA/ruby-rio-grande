require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do 
  before(:context) do
    @movie = Movie.new("Click", 5.99, 60, "Billy", "Bob")
  end 

  #check initialization
  #check that it is an extended from DigitalItem
  #check that it is an instance of Ebook

  describe 'Initialization' do
    it "should be a Movie" do
      expect(@movie).to be_instance_of(Movie)
    end

    it "should be a Digital Item" do
      expect(@movie).to be_kind_of(DigitalItem)
    end

    it "is assigned a name" do
      expect(@movie.name).to eq("Click")
    end

    it "is assigned a price" do
      expect(@movie.price).to eq(5.99)
    end

    it "is assigned a run time" do
      expect(@movie.run_time).to eq(60)
    end

    it "is assigned a director" do
      expect(@movie.director).to eq("Billy")
    end

    it "is assigned a producer" do
      expect(@movie.producer).to eq("Bob")
    end
  end

  #check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the run time' do
      @movie.run_time = 90
      expect(@movie.run_time).to eq(90)
    end

    it 'assigns and reads the director' do
      @movie.director = "SpongeBob"
      expect(@movie.director).to eq("SpongeBob")
    end

    it 'assigns and reads the producer' do
      @movie.producer = "Patrick"
      expect(@movie.producer).to eq("Patrick")
    end
  end
end

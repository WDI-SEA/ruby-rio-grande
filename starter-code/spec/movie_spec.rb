require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
  @movie = Movie.new("Movie Name", 12, 120, "Steven Spielberg", "George Lucas")
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@movie).to be_a(Item)
    end
     it "is an instance of the DigitalItem class" do
      expect(@movie).to be_a(DigitalItem)
    end
    it "is extended from Item" do
      expect(@movie).to be_an(Item)
    end
    it "is an instance of movie" do
      expect(@movie).to be_instance_of(Movie)
    end
  end
describe "Accessors" do
    
    it "should be able to get director" do
      expect(@movie.director).to eq("Steven Spielberg")
    end
    it "should be able to get producer" do
      expect(@movie.producer).to eq('George Lucas')
    end
    it "should be able to get and set name" do
      @movie.name="New Name"
      expect(@movie.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @movie.price=44.99
      expect(@movie.price).to eq(44.99)
    end
  end
end
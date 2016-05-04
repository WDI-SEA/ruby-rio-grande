require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    @movie = Movie.new("Shaun of the Dead", 15.99, 1, 150, "Edgar Wright", "Some other white guy")
  end

  describe "Initialization" do
  	it "is an instance of the DigitalItem class" do
  		expect(@movie).to be_instance_of(Movie)
    end
    it "is assigned a name" do
      expect(@movie.name).to eq("Shaun of the Dead")
    end
    it "is assigned a price" do
      expect(@movie.price).to eq(15.99)
    end
  end

  describe "Inheritance" do
    it "should extend DigitalItem" do
      expect(Movie).to be < DigitalItem
  end

  describe "Accessors" do
    it "should be able to get quantity" do
      expect(@movie.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @movie.name="New Name"
      expect(@movie.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @movie.price=44.99
      expect(@movie.price).to eq(44.99)
    end
    it "should be able to get and set director" do
      expect(@movie.director).to eq("Edgar Wright")
      @movie.director="Another British guy"
      expect(@movie.director).to eq("Another British guy")
    end
    it "should be able to get and set producer" do
      expect(@movie.producer).to eq("Some other white guy")
      @movie.producer="test"
      expect(@movie.producer).to eq("test")
    end
    it "should be able to get quantity" do
      expect(@movie.quantity).to eq(1)
    end
  end

  describe "Methods" do
    it "should be able to get weight" do
      expect(@digital_item.weight).to eq(-1)
    end
  end
end

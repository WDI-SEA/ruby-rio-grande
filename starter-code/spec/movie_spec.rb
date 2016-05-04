require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do
	
	before(:context) do
		@movie1 = Movie.new("The Incredibles", 19.99, 105, "Brad Bird", "Pixar")
	end

	describe "Initialization" do
    it "is a kind of the Item class" do
      expect(@movie1).to be_a_kind_of(Item)
    end
    it "is a kind of the DigitalItem class" do
      expect(@movie1).to be_a_kind_of(Digital_item)
    end
    it "is an instance of the Movie class" do
    	expect(@movie1).to be_instance_of(Movie)
    end
    it "is assigned a name" do
      expect(@movie1.name).to eq("The Incredibles")
    end
    it "is assigned a price" do
      expect(@movie1.price).to eq(19.99)
    end
    it "is assigned a runtime" do
      expect(@movie1.runtime).to eq(105)
    end
    it "is assigned a director" do
      expect(@movie1.runtime).to eq("Brad Bird")
    end
    it "is assigned a producer" do
      expect(@movie1.producer).to eq("Pixar")
    end
  end

  describe "Accessors" do
    it "quatity of digital item should always be 1" do
      expect(@movie1.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @movie1.name="New Name"
      expect(@movie1.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @movie1.price=44.99
      expect(@movie1.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@movie1.description).to eq("")
      @movie1.description="test"
      expect(@movie1.description).to eq("test")
    end
  end

  describe "Methods" do
    it "should be able to stock, quantity should stay as 1" do
      result = @movie1.stock 5
      expect(result).to eq(true)
      expect(@movie1.quantity).to eq(1)
    end
    it "should able to sell items regardless of stock since it's always 1" do
      result = @movie1.sell 6
      expect(result).to eq(true)
      expect(@movie1.quantity).to eq(1)
    end
    it "should be able to sell items and quantity should stay as 1" do
      result = @movie1.sell 3
      expect(result).to eq(true)
      expect(@movie1.quantity).to eq(1)
    end
  end

  describe "Part 2 Methods" do
    it "should be able to return, digital items wont change the quantity" do
      result = @movie1.return 2
      expect(result).to eq(true)
      expect(@movie1.quantity).to eq(1)
    end
    it "should have a default weight of -1 for digital items" do
      expect(@movie1.weight).to eq(-1)
    end
    it "should not be able to set a new weight" do
      @movie1.weight = 1
      expect(@movie1.weight).to eq(-1)
    end
    it "should not be to report a ship_price" do
      expect(@movie1.ship_price).to eq(false)
    end
  end
end

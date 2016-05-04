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
      expect(@movie1).to be_a_kind_of(DigitalItem)
    end

    it "is an instance of the Movie class" do
    	expect(@movie1).to be_instance_of(Movie)
    end

    it "is assigned a name" do
      expect(@movie1.name).to eq("Starter Pack")
    end
    it "is assigned a price" do
      expect(@movie1.price).to eq(0.99)
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
      @item.price=44.99
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
      expect(@movie1.quantity).to eq(2)
    end
  end

end

require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    #initialize item
    @cd = Cd.new "CD title", 10.99, 64, 12, "Beiber", "1 Hour"
  end

  #check initialization
  describe "initialization" do
	  #check that it is an extended from Item
	  it "extend from the Item class" do
	  	expect(Cd).to be < Item
	  end
	  #check that it is an instance of Cd
	  it "is an instance of the Cd class" do
	  	expect(@cd).to be_instance_of(Cd)
	  end
	end

	describe "Accessors" do
	  #check getters and setters
	  it "should be able to get and set name" do
	  	@cd.name = "CD Title"
	  	expect(@cd.name).to eq("CD Title")
	  end
	  it "should be able to get and set price" do
	  	@cd.price = 10.99
	  	expect(@cd.price).to eq(10.99)
	  end
	  it "should be able to get and set tracks" do
	  	@cd.tracks = 12
	  	expect(@cd.tracks).to eq(12)
	  end
	  it "should be able to get and set tracks" do
	  	@cd.artist = "Beiber"
	  	expect(@cd.artist).to eq("Beiber")
	  end
	  it "should be able to get and set time" do
	  	@cd.run_time = "1 Hour"
	  	expect(@cd.run_time).to eq("1 Hour")
	  end
	end

	describe "Methods" do
    it "should be able to stock" do
      result = @cd.stock 5
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(5)
    end
    it "should not be able to sell more items than we have" do
      result = @cd.sell 6
      expect(result).to eq(false)
      expect(@cd.quantity).to eq(5)
    end
    it "should be able to sell items and update quantity" do
      result = @cd.sell 3
      expect(result).to eq(true)
      expect(@cd.quantity).to eq(2)
    end
  end

end

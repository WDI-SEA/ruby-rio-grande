require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new("The Matrix", 5, 20, "Andy Wachowski", "Me")
  end

  #check initialization
  describe "Initialization" do

	#check that it is an instance of Bluray
  	it "should be an instance of a bluray" do
  		expect(@bluray).to be_kind_of(Bluray)
  	end

  	#check that it is an extended from Item
  	it "should be an instance of an item" do
  		expect(@bluray).to be_kind_of(Item)
  	end

  	it "should assign a name" do
  		expect(@bluray.name).to eq("The Matrix")
  	end

  	it "should assign a price" do
  		expect(@bluray.price).to eq(5)
  	end

  	it "should assign a run time" do
  		expect(@bluray.run_time).to eq(20)
  	end

  	it "should assign a director" do
  		expect(@bluray.director).to eq("Andy Wachowski")
  	end

  	it "should assign a producer" do
  		expect(@bluray.producer).to eq("Me")
  	end

  end

  #check getters and setters
  describe "getters and setters" do

  	it "should assign and write name"  do
  		@bluray.name = "Deadpool"
  		expect(@bluray.name).to eq("Deadpool")
  	end

  	 it "should assign and write price"  do
  		@bluray.price = 5000
  		expect(@bluray.price).to eq(5000)
  	end

  	it "should assign and write producer"  do
  		@bluray.producer = "KDubs"
  		expect(@bluray.producer).to eq("KDubs")
  	end

  	it "should assign and write director"  do
  		@bluray.director = "KDubs2"
  		expect(@bluray.director).to eq("KDubs2")
  	end

  end

end

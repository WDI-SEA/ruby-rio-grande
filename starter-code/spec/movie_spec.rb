# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do 
	
	before(:context) do
		@movie = Movie.new("Rockstar Coders", 5, 120, "GA", "Me")
	end

	#check initialization
	describe "initialization" do

		it "should be an instance of a digital item" do
			expect(@movie).to be_kind_of(Digital)
		end

		it "should be an instance of a movie" do
			expect(@movie).to be_kind_of(Movie)
		end

		it "should assign a name" do
			expect(@movie.name).to eq("Rockstar Coders")
		end

		it "should assign run time" do
			expect(@movie.run_time).to eq(120)
		end

		it "should assign director" do
			expect(@movie.director).to eq("GA")
		end

		it "should assign producer" do
			expect(@movie.producer).to eq("Me")
		end
	end

	#check getters and setters
	describe "getters and setters" do

		it "assigns and reads the run_time" do
			@movie.run_time = 250
			expect(@movie.run_time).to eq(250)
		end

		it "assigns and reads the producer" do
			@movie.producer = "Foo Bar Baz"
			expect(@movie.producer).to eq("Foo Bar Baz")
		end

		it "assigns and reads the director" do
			@movie.director = "Taco"
			expect(@movie.director).to eq("Taco")
		end
	end
end
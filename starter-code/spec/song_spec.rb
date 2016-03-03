# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do 
	
	before(:context) do
		@song = Song.new("Coding is cool", 500, 800, "Me")
	end

	#check initialization
	describe "initialization" do

		it "should be an instance of a digital item" do
			expect(@song).to be_kind_of(Digital)
		end

		it "should be an instance of a song" do
			expect(@song).to be_kind_of(Song)
		end

		it "should assign a name" do
			expect(@song.name).to eq("Coding is cool")
		end

		it "should assign price" do
			expect(@song.price).to eq(500)
		end

		it "should assign run time" do
			expect(@song.run_time).to eq(800)
		end

		it "should assign artist" do
			expect(@song.artist).to eq("Me")
		end
	end

	#check getters and setters
	describe "getters and setters" do

		it "assigns and reads the run_time" do
			@song.run_time = 10
			expect(@song.run_time).to eq(10)
		end

		it "assigns and reads the artist" do
			@song.artist = "GA"
			expect(@song.artist).to eq("GA")
		end
	end
end
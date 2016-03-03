require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie  do

	before(:context) do
		@Movie = Movie.new("Title", 10.00, "60:00", "Director", "Producer")
	end

	describe "Initialization" do
		it "should be an instance of movie class" do
			expect(@Movie).to be_instance_of(Movie)
		end
		it "is a kind of digital item" do
			expect(@Movie).to be_kind_of(Digital_Item)
		end
		it "has a run_time" do
			expect(@Movie.run_time).to eq("60:00")
		end
		it "should have a director" do
			expect(@Movie.director).to eq("Director")
		end
		it "Should have a prodcue" do
			expect(@Movie.producer).to eq("Producer")
		end

	end

	describe "getters and setters" do
		it "should be able to read and write Director" do
			@Movie.director = "New Director"
			expect(@Movie.director).to eq("New Director")
		end
		it "Should be able to read and write producer" do
			@Movie.producer = "New Producer"
			expect(@Movie.producer).to eq("New Producer")
		end
		it "Should be able to read and write run_time" do
			@Movie.run_time = "15:00"
			expect(@Movie.run_time).to eq("15:00") 
		end
	end
end
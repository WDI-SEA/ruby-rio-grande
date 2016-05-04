require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    @movie = Movie.new("60 mins", "Steven Speilberg", "RZA")
  end

  describe "Initialization" do
    it "is extended from Digitalitem" do
      expect(@movie).to be_kind_of(Movie)
    end
    it "is an instance of Movie" do
      expect(@movie).to be_instance_of(Movie)
    end
    it "should have an run time of 60 mins" do
      expect(@movie.run_time).to eq("60 mins")
    end
  end

end

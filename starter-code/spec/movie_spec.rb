require_relative 'spec_helper'
require_relative '../lib/Movie'

describe Movie do

  before(:context) do
    @movie = Movie.new()
  end

  describe Initialization do
  	it "is an instance of the Movie class" do
  		expect(@movie).to be_instance_of(Movie)
  end
  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end

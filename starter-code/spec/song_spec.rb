require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new()
  end

  describe Initialization do
  	it "is an instance of the Song class" do
  		expect(@song).to be_instance_of(Song)
  end


  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end

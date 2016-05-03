require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    @bluray = Bluray.new()
  end

  describe Initialization do
  	it "is an instance of the Bluray class" do
  		expect(@bluray).to be_instance_of(Bluray)
  end
  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  #check getters and setters

end

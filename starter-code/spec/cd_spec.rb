require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new()
  end

  describe Initialization do
  	it "is an instance of the Cd class" do
  		expect(@cd).to be_instance_of(Cd)
  end
  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end

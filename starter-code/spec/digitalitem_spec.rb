require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    @digital_item = DigitalItem.new()
  end

  describe Initialization do
  	it "is an instance of the DigitalItem class" do
  		expect(@digital_item).to be_instance_of(DigitalItem)
  end
  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end

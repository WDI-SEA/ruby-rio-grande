require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
     @bluray = Bluray.new("80 mins", "RZA", "RZA")
  end

  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  #check getters and setters

  describe "Initialization" do
    it "is extended from Item" do
      expect(@bluray).to be_kind_of(Item)
    end
    it "is an instance of Bluray" do
      expect(@bluray).to be_instance_of(Bluray)
    end
    it "should have an run time of 80 mins" do
      expect(@bluray.run_time).to eq("80 mins")
    end
    it "should have a director of RZA" do
      expect(@bluray.director).to eq("RZA")
    end
    it "should have a producer of RZA" do
      expect(@bluray.producer).to eq("RZA")
    end
  end

end

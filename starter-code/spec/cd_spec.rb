require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new(12, "Slum Village", "43 mins")
  end

  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

  describe "Initialization" do
    it "is extended from Item" do
      expect(@cd).to be_kind_of(Item)
    end
    it "is an instance of Books" do
      expect(@cd).to be_instance_of(Cd)
    end
    it "should have an Artist of Slum Village" do
      expect(@cd.artists).to eq("Slum Village")
    end
  end

end

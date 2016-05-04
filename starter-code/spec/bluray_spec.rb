require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
     @item = Item.new("1 hour","Tim Burton", "JJ Abrams")
  end

  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  #check getters and setters
  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@item).to be_instance_of()
    end
    it "is assigned a runtime" do
      expect(@item.runtime).to eq("1 hour")
    end
    it "is assigned a director" do
      expect(@item.director).to eq("Tim Burton")
    end
     it "is assigned a producrer" do
      expect(@item.producer).to eq("JJ Abrams")
    end
  end


end

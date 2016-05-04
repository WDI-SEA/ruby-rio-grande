require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
     @bluray = Bluray.new("The Wolf of Wall Street",39.99, 180 ,"Martin Scorsese", "Riza Aziz")
  end

  #check initialization

  describe "Initialization" do
    it "is an extended class of the Item class" do
      expect(Bluray).to be < Item 
    end
    it "is an instance of the Bluray class" do
      expect(@bluray).to be_instance_of(Bluray)
    end
     it "is assigned a name" do
      expect(@bluray.name).to eq("The Wolf of Wall Street")
    end
    it "is assigned a price" do
      expect(@bluray.price).to eq(39.99)
    end
    it "is assigned a runtime" do
      expect(@bluray.runtime).to eq(180)
    end
    it "is assigned a director" do
      expect(@bluray.director).to eq("Martin Scorsese")
    end
     it "is assigned a producrer" do
      expect(@bluray.producer).to eq("Riza Aziz")
    end
  end


  describe "Accessors" do
    it "should be able to get and set runtime" do
      @bluray.runtime=180
      expect(@bluray.runtime).to eq(180)
    end
    it "should be able to get and set director" do
      @bluray.director="Martin Scorsese"
      expect(@bluray.director).to eq("Martin Scorsese")
    end
    it "should be able to get and set producer" do
      @bluray.producer="Riza Aziz"
      expect(@bluray.producer).to eq("Riza Aziz")
    end
  end
end
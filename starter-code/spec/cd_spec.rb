require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new("Weightless",11.99,12,"Animals as Leaders",47)
  end

 describe "Initialization" do
     it "is an extended class of the Item class" do
      expect(Cd).to be < Item 
    end
    it "is an instance of the Cd class" do
      expect(@cd).to be_instance_of(Cd)
    end
     it "is assigned a name" do
      expect(@cd.name).to eq("Weightless")
    end
    it "is assigned a price" do
      expect(@cd.price).to eq(11.99)
    end
    it "is assigned a number of tracks" do
      expect(@cd.tracks).to eq(12)
    end
    it "is assigned an artist" do
      expect(@cd.artist).to eq("Animals as Leaders")
    end
    it "is assigned a runtime" do
      expect(@cd.runtime).to eq(47)
    end
  end

  describe "Accessors" do
    it "should be able to get and set tracks" do
      @cd.tracks=12
      expect(@cd.tracks).to eq(12)
    end
    it "should be able to get and set artist" do
      @cd.artist="Animals as Leaders"
      expect(@cd.artist).to eq("Animals as Leaders")
    end
    it "should be able to get and set runtime" do
      @cd.runtime=47
      expect(@cd.runtime).to eq(47)
  end
end
end
require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    @cd = Cd.new(12,"Animals as Leaders", "12 hours")
  end

  describe "Initialization" do
    it "is an instance of the Cd class" do
      expect(@cd).to be_instance_of(Cd)
    end
    it "is assigned a name" do
      expect(@cd.tracks).to eq(12)
    end
    it "is assigned a price" do
      expect(@cd.artist).to eq("Animals as Leaders")
    end
    it "is assigned a price" do
      expect(@cd.runtime).to eq("12 hours")
    end
  end
end

require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new("5 mins", "Radiohead")
  end

  describe "Initialization" do
    it "is extended from Digitalitem" do
      expect(@song).to be_kind_of(Digitalitem)
    end
    it "is an instance of Song" do
      expect(@song).to be_instance_of(Song)
    end
    it "should have an run time of 5 mins" do
      expect(@song.run_time).to eq("5 mins")
    end
    it "should have an artist of Radiohead" do
      expect(@song.artist).to eq("Radiohead")
    end
  end

end

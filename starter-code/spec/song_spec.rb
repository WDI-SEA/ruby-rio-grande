# You are on your own... good luck.

require_relative 'spec_helper'
require_relative '../lib/Song'

describe Song do

  before(:context) do
    @song = Song.new ("Song Title", 1.99, 12, "Artist Name", 3.36)
  end

  #check initialization
  describe "Initialization" do
    it "is an instance of the Song class" do
      expect(@song).to be_instance_of(Song)
    end
    it "extends from the DigitalItem class" do
      expect(Song).to be < DigitalItem
    end
  end

  it "getters" do
    @song.name = "New Title"
    expect(@song.name).to eq("New Title")
  end

  it "setters"do
  @song.run_time = 1.56
      expect(@song.run_time).to eq(1.56)
  end

end
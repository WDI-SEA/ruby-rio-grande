require_relative 'spec_helper'
require_relative '../lib/Cd'

describe Cd do

  before(:context) do
    # (name, price, tracks, artist, run_time, quantity, weight)
    #initialize item
    @queen = Cd.new("Queen's Greatest Hits", 15, 11, 1, 93, 6, 0)
  end
describe "initialization" do
  it "is an instance of the Cd class" do
    expect((@queen).to be_instance_of(Cd)).to be_instance_of(Item)
    expect(@queen).to be_instance_of(Cd)
  end
end
it "getters" do
  expect(@queen.tracks).to eq(11)
end

it "setters" do
  @queen.tracks = 30
  expect(@queen.tracks).to eq(30)
  end


  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end

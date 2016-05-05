require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
# (name, price, run_time, director, producer, quantity, weight)
    @the_fall = Bluray.new("The Fall", 29.99, 120, "Sam", "Pan" , 3, 0)
  end
describe "initialization" do
  it "is an instance of the Bluray class" do
    expect(@the_fall).to be_instance_of(Bluray)
    expect(@the_fall.name).to eq("The Fall")
    expect(@the_fall.price).to eq(29.99)
  end
  it "getters" do
    expect(@the_fall.producer).to eq("Pan")

  end

  it "setters" do
    @the_fall.producer = "foo"
    expect(@the_fall.producer).to eq("foo")
    
  end

end
  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  #check getters and setters
end


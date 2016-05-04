# You are on your own... good luck.

require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe DigitalItem do

  before(:context) do
    #initialize item
    # (name, price, weight)
    @hundred_years = Book.new("100 Years of Solitude", 12.99, 345, "Marquez", 33, 0)
  end
describe "initialization" do
  it "is an instance of the Book class"do
  expect(@hundred_years).to be_instance_of(Book)
  expect(@hundred_years.name).to eq("100 Years of Solitude")
  # expect(@hundred_years).to be_instance_of(Item)
  end
end

it "getters" do
  expect(@hundred_years.author).to eq("Marquez")
end
it "setters" do
  @hundred_years.author = "foo"
  expect(@hundred_years.author).to eq("foo")
  end


  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Book
  #check getters and setters

end

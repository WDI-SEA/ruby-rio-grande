require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @ebook = EBook.new()
  end

  describe Initialization do
  	it "is an instance of the EBook class" do
  		expect(@ebook).to be_instance_of(EBook)
  end
  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Cd
  #check getters and setters

end

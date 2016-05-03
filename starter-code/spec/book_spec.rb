require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new()
  end

  describe Initialization do
  	it "is an instance of the Book class" do
  		expect(@book).to be_instance_of(Book)
  end
  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Book
  #check getters and setters

end

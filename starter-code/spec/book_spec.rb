require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book3 = Book.new("Greatbook", 1.99, 80, "Brian B")
  end

  #check initialization
  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@book3).to be_instance_of(Book)
    end


  end

  #check that it is an extended from Item
  #check that it is an instance of Book
  #check getters and setters

end

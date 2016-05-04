require_relative 'spec_helper'
require_relative '../lib/Item'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    #initialize item
     @book = Book.new("Generic Book", 50, 777, "Generic Author")
  end

  #check initialization
	describe "Initialization" do
		#check that it is an extended from Item
		it "is an extended class from Item" do 
  			expect(Book).to be < Item
  		end
  		it "is assigned a name" do
      expect(@book.name).to eq("Generic Book")
    end
    it "is assigned a price" do
      expect(@book.price).to eq(50)
    end
  		#check that it is an instance of Book
  		it "is an instance of Book" do
  			expect(@book).to be_instance_of(Book)
  		end
  		it "is assigned a number of pages" do
    	expect(@book.pages).to eq(777)
    end
    it "is assigned an author" do
    	expect(@book.author).to eq("Generic Author")
    end
	end

	describe "Accessors" do
		#check getters and setters
		it "should be able to get and set pages" do
	     	@book.pages=600
	      expect(@book.pages).to eq(600)
	    end

	   it "should be able to get and set author" do
	     	@book.author="New Author"
	      expect(@book.author).to eq("New Author")
	    end
	end

	describe "Methods" do
   	it "should be able to tear out pages from the book" do
     		@book.tear_out_pages 50
     		expect(@book.pages).to eq(727)
   	end
  end
end

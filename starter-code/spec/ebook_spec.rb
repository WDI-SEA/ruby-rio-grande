# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/DigitalItem'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    #initialize EBook
    @ebook = EBook.new("Generic EBook", 20, 1.2, 500, "Generic Author")
  end

  #check initialization
  describe "Initialization" do
		#check that it is an extended from Item
		it "is an extended class from Item" do 
  			expect(EBook).to be < Item
  		end
  		#check that it is an extended from DigitalItem
		it "is an extended class from Item" do 
  			expect(EBook).to be < DigitalItem
  		end
  		it "is assigned a name" do
     		expect(@ebook.name).to eq("Generic EBook")
   	end
   	it "is assigned a price" do
      	expect(@ebook.price).to eq(20)
  		end
  		it "is assigned a file size (GB)" do
      	expect(@ebook.filesize).to eq(1.2)
   	end
  		#check that it is an instance of EBook
  		it "is an instance of EBook" do
  			expect(@ebook).to be_instance_of(EBook)
  		end
  		it "is assigned a number of pages" do
      	expect(@ebook.pages).to eq(500)
   	end
   	it "is assigned an author" do
      	expect(@ebook.author).to eq("Generic Author")
   	end
	end

	describe "Accessors" do
		#check getters and setters
		it "should be able to get and set author" do
	     	@ebook.author="New Author"
	      expect(@ebook.author).to eq("New Author")
	    end
	end

	describe "Methods" do
     it "should not be able to tear out pages from the ebook" do
     		@ebook.tear_out_pages 50
     		expect(@book.pages).to eq(777)
   	end
  end
end
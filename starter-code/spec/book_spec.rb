require_relative 'spec_helper'
require_relative '../lib/Book'


describe Book do

  before(:context) do
    #initialize item
    @book = Book.new("Harry Potter", 15.00, 700, "JK Rowling")
  end



  #check initialization

 	describe 'initialization' do
	 	it 'Should be a book' do
	 		expect(@book).to be_instance_of(Book)
	 	end
	 	it 'Should be an item' do
	 		expect(@book).to be_kind_of(Item)
	 	end
	 	it "is assigned a name" do
	      expect(@book.name).to eq("Harry Potter")
	    end
	    it "is assigned a price" do
	      expect(@book.price).to eq(15.00)
	    end
	    it "is assigned pages" do
	    	expect(@book.pages).to eq(700)
	    end
	    it "is assigned to author" do
	    	expect(@book.author).to eq("JK Rowling")
	    end
	end		
  #check that it is an extended from Item
  #check that it is an instance of Book
  #check getters and setters

	describe 'getters and setters' do
		it 'assigns and reads the name' do
			@book.name = 'Paradise Lost'
			expect(@book.name).to eq("Paradise Lost")
		end
	    it "assigns and reads price" do
	      @book.price= 0
	      expect(@book.price).to eq(0)
	    end
	    it "assigns and reads pages" do
	    	@book.pages = 0
	    	expect(@book.pages).to eq(0)
	    end
	    it "assigns and reads author" do
	    	@book.author = "John Milton"
	    	expect(@book.author).to eq("John Milton")
	    end
	end
end

# You are on your own... good luck.
require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do 
	
	before(:context) do
		@ebook = EBook.new("My EBook", 20, 700, "Me")
	end

	#check initialization
	describe "initialization" do

		it "should be an instance of a digital item" do
			expect(@ebook).to be_kind_of(Digital)
		end

		it "should be an instance of an ebook" do
			expect(@ebook).to be_kind_of(EBook)
		end

		it "should assign a name" do
			expect(@ebook.name).to eq("My EBook")
		end

		it "should assign assign pages" do
			expect(@ebook.pages).to eq(700)
		end

		it "should assign assign an author" do
			expect(@ebook.author).to eq("Me")
		end
	end


	#check getters and setters
	describe "getters and setters" do

		it "assigns and reads the pages" do
			@ebook.pages = 40000
			expect(@ebook.pages).to eq(40000)
		end

		it "assigns and reads the author" do
			@ebook.author = "Awesomeness"
			expect(@ebook.author).to eq("Awesomeness")
		end
	end
end
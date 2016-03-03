require_relative 'spec_helper'
require_relative '../lib/EBook'

describe Ebook do 

	before(:context) do
		@ebook = Ebook.new("Title", 10.00, 1000, "person")
	end

	describe "Initialization" do
		it "is an instance of the Ebook class" do
			expect(@ebook).to be_instance_of(Ebook)
		end

		it "is an kind of Digital Item" do
			expect(@ebook).to be_kind_of(Digital_Item)
		end

		it "has a name" do
			expect(@ebook.name).to eq("Title")
		end
		it "has a price" do
			expect(@ebook.price).to eq(10.00)
		end
		
		it "has pages" do
			expect(@ebook.pages).to eq(1000)
		end

		it "has author" do
			expect(@ebook.author).to eq("person")
		end
	end

	describe "getters and setters" do
		it "should get and set pages"do
			@ebook.pages = 1
			expect(@ebook.pages).to eq(1)
		end

		it "should get and set author" do
			@ebook.author = "new author"
			expect(@ebook.author).to eq("new author")
		end
	end
	

end

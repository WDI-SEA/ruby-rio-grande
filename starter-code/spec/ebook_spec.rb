# You are on your own... good luck.

require_relative('spec_helper')
require_relative('../lib/Ebook')


	describe "Initialization" do

		before(:context) do
			# initialize item
			@ebook = EBook.new("50 shades", 10.00, 200, "Some dude")
		end

		it "has a name" do
			expect(@ebook.name).to eq("50 shades")
		end

		it "has a price" do
			expect(@ebook.price).to eq(10.00)
		end

		it "has a page count" do
			expect(@ebook.pages).to eq(200)
		end

		it "has an author" do
			expect(@ebook.author).to eq("Some dude")
		end

		it "is a type of Digital Item" do
			expect(@ebook).to be_kind_of(DigitalItem)
		end

		it "is a type of EBook" do
			expect(@ebook).to be_instance_of(EBook)
		end

		it "is writeable" do
			@ebook.name = "Boys in Boat"
			expect(@ebook.name).to eq("Boys in Boat")
		end


	end
require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do 
	before(:context) do
		@ebook = EBook.new('mybook', 20, 200, 'me')
	end

	describe "initialization" do
		it 'should be an EBook' do
			expect(@ebook).to be_an_instance_of(EBook)
		end
		it 'should be an item' do
			expect(@ebook).to be_a_kind_of(EBook)
		end
		it 'should have a name' do 
			expect(@ebook.name).to eq('mybook')
		end
		it 'should have a price' do 
			expect(@ebook.price).to eq(20)
		end
		it 'should have pages' do
			expect(@ebook.pages).to eq(200)
		end
		it 'should have an author' do
			expect(@ebook.author).to eq('me')
		end
	end
	describe "quantity" do
		it "should remain 1 after stock" do 
			@ebook.stock 1
			expect(@ebook.quantity).to eq(1)
		end
		it "should remain 1 after sell" do
			@ebook.sell 1
			expect(@ebook.quantity).to eq(1)
		end
		it "should be able to return items" do
      	@ebook.return(2)
      	expect(@ebook.quantity).to eq(3)
    	end
    	it "should return ship price" do
      		@ebook.ship_price
      		expect(@ebook.ship_price).to eq(false)
    	end
	end 
end
	

require_relative 'spec_helper'
require_relative '../lib/DigitalItem'

describe Digital_Item  do 
	before(:context) do
		@DI = Digital_Item.new("Skynet", 10.00,)
	end
	
	describe "Initilization" do
		it "is an instance of the Item class" do
			expect(@DI).to be_kind_of(Item)
		end
		it "is an instacne of digitalItem" do
			expect(@DI).to be_instance_of(Digital_Item) 
		end
		it"Is assigned a name" do
			expect(@DI.name).to eq("Skynet")
		end
		it "Should have a price" do
			expect(@DI.price).to eq(10.00)
		end
	end

	describe "Accessors" do
		it "should be able to get quantity" do
			expect(@DI.quantity).to eq(1)
		end
		it "should get and set name" do
			@DI.name = "New Name"
			expect(@DI.name).to eq("New Name")
		end
		it "Should be able to get and set price" do
			@DI.price = 10.00
			expect(@DI.price).to eq(10.00)
		end
		it"should be able to set weight" do
			expect(@DI.weight).to  eq(-1)
		end	


	end

	describe "Methods" do
		it"Shouldn't be able to stock" do
			result = @DI.stock 2
			expect(result).to eq(true)
			expect(@DI.quantity).to eq(1)
		end
		it "shoudl not decrease when sold" do
			result = @DI.sell 2
			expect(result).to eq(true)
			expect(@DI.quantity).to eq(1)
		end
		it "should be able to return items and increase quantity" do
      		result = @DI.return 1
      		expect(result).to eq(true)
      		expect(@DI.quantity).to eq(1)
    	end
    	 it 'should return ship price' do
      		result = @DI.ship_price
      		expect(result).to eq(false)
    	end

  
	end



end
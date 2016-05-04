require_relative 'spec_helper'
require_relative '../lib/Ebook'

describe Ebook do
	
	before(:context) do
		@ebook1 = Ebook.new("The Life-Changing Magic of Not Giving a F**k", 11.99, 125, "Sarah Knight")
	end

	describe "Initialization" do
    it "is a kind of the Item class" do
      expect(@ebook1).to be_a_kind_of(Item)
    end
    it "is a kind of the Digital_item class" do
      expect(@ebook1).to be_a_kind_of(Digital_item)
    end
    it "is an instance of the Ebook class" do
    	expect(@ebook1).to be_instance_of(Ebook)
    end
    it "is assigned a name" do
      expect(@ebook1.name).to eq("The Life-Changing Magic of Not Giving a F**k")
    end
    it "is assigned a price" do
      expect(@ebook1.price).to eq(11.99)
    end
    it "is assigned a number of pages" do
    	expect(@ebook1.pages).to eq(125)
    end
    it "is assigned an author" do
    	expect(@ebook1.author).to eq("Sarah Knight")
    end
  end

  describe "Accessors" do
    it "quatity of digital item should always be 1" do
      expect(@ebook1.quantity).to eq(1)
    end
    it "should be able to get and set name" do
      @digital_item1.name="New Name"
      expect(@ebook1.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @item.price=44.99
      expect(@ebook1.price).to eq(44.99)
    end
    it "should be able to get and set description" do
      expect(@ebook1.description).to eq("")
      @ebook1.description="test"
      expect(@ebook1.description).to eq("test")
    end
  end

  describe "Methods" do
    it "should be able to stock, quantity should stay as 1" do
      result = @ebook1.stock 5
      expect(result).to eq(true)
      expect(@ebook1.quantity).to eq(1)
    end
    it "should able to sell items regardless of stock since it's always 1" do
      result = @ebook1.sell 6
      expect(result).to eq(true)
      expect(@ebook1.quantity).to eq(1)
    end
    it "should be able to sell items and quantity should stay as 1" do
      result = @ebook1.sell 3
      expect(result).to eq(true)
      expect(@ebook1.quantity).to eq(2)
    end
  end

end
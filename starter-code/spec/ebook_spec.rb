require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @ebook = EBook.new "EBook Title", 6.99, 33, "Author Name"
  end

  #check initialization
  describe "Initialization" do
    #check that it is an instance of EBook
    it "is an instance of the EBook class" do
      expect(@ebook).to be_instance_of(EBook)
    end
    #check that it is an extended from DigitalItem
    it "extends from the DigitalItem class" do
      expect(EBook).to be < DigitalItem
    end
    
  end

  #check getters and setters
  describe "Accessors" do
    it "should be able to get and set name" do
      @ebook.name = "New Title"
      expect(@ebook.name).to eq("New Title")
    end
    it "should be able to get and set price" do
      @ebook.price = 10.00
      expect(@ebook.price).to eq(10.00)
    end
    it "should be able to get and set pages" do
      @ebook.pages = 34
      expect(@ebook.pages).to eq(34)
    end
    it "should be able to get and set author" do
      @ebook.author = "New Author"
      expect(@ebook.author).to eq("New Author")
    end
  end

  describe "Methods" do
    it "quanity should always be 1" do
      expect(@ebook.quantity).to eq(1)
    end
    it "should not decrease quanity when sold" do
      result = @ebook.sell 3
      expect(result).to eq(true)
      expect(@ebook.quantity).to eq(1)
      expect(@ebook.quantity).not_to be < 1

    end
    it "should not increase quanity when stocked" do
      result = @ebook.stock(10)
      expect(result).to eq(true)
      expect(@ebook.quantity).to eq(1)
    end
  end

end

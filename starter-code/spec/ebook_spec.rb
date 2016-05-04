require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @ebook = EBook.new("Not That Kind of Girl", 14.99, 1, 234, "Lena Dunham")
  end

  describe "Initialization" do
  	it "is an instance of the DigitalItem class" do
  		expect(@ebook).to be_instance_of(EBook)
    end
    it "is assigned a name" do
      expect(@ebook.name).to eq("Not That Kind of Girl")
    end
    it "is assigned a price" do
      expect(@ebook.price).to eq(14.99)
    end
  end

  describe "Inheritance" do
    it "should extend DigitalItem" do
      expect(ebook).to be < DigitalItem
  end

  describe "Accessors" do
    it "should be able to get and set name" do
      @ebook.name="New Name"
      expect(@ebook.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @ebook.price=44.99
      expect(@ebook.price).to eq(44.99)
    end
    it "should be able to get and set pages" do
      expect(@ebook.pages).to eq(234)
      @ebook.pages=245
      expect(@ebook.pages).to eq(245)
    end
    it "should be able to get and set author" do
      expect(@ebook.author).to eq("Lena Dunham")
      @ebook.author="Not Lena Dunham"
      expect(@ebook.author).to eq("Not Lena Dunham")
    end
    it "should be able to get quantity" do
      expect(@ebook.quantity).to eq(1)
    end
  end
end

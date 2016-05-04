require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @ebook = EBook.new("Generic Item",1.99, 300, "Hemmingway")
  end

  describe "Initialization" do
    it "is an instance of the Item class" do
      expect(@ebook).to be_a(Item)
    end
    it "is an instance of the DigitalItem class" do
      expect(@ebook).to be_a(DigitalItem)
    end
     it "is extended from Item" do
      expect(@ebook).to be_an(Item)
    end
    it "is an instance of Book" do
      expect(@ebook).to be_instance_of(EBook)
    end
  end

  describe "Accessors" do
    it "should be able to get and set Author" do
      @ebook.author="Joyce"
      expect(@ebook.author).to eq("Joyce")
    end
    it "should be able to get and set pages" do
      expect(@ebook.pages).to eq(300)
    end
    it "should be able to get and set name" do
      @ebook.name="New Name"
      expect(@ebook.name).to eq("New Name")
    end
    it "should be able to get and set price" do
      @ebook.price=44.99
      expect(@ebook.price).to eq(44.99)
    end
  end
end
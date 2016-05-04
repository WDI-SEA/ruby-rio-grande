require_relative 'spec_helper'
require_relative '../lib/DigitalItem'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @ebook = EBook.new("Brave New World",9.99,250,"Aldous Huxley")
  end


  describe "Initialization" do
    it "Book to be inherited from Item" do
      expect(EBook).to be < Digital 
    end
     it "is assigned a title" do
      expect(@ebook.name).to eq("Brave New World")
    end
    it "is assigned a price" do
      expect(@ebook.price).to eq(9.99)
    end
    it "is assigned a number of pages" do
      expect(@ebook.pages).to eq(250)
    end
    it "is assigned an author" do
      expect(@ebook.author).to eq("Aldous Huxley")
    end
  end

  describe "Accessors" do
    it "should be able to get and set pages" do
      @ebook.pages=250
      expect(@ebook.pages).to eq(250)
    end
    it "should be able to get and set author" do
      @ebook.author="Aldous Huxley"
      expect(@ebook.author).to eq("Aldous Huxley")
    end
  end
 end
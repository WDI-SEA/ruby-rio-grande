require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @ebook = EBook.new("The Martian", 5.44, 385, "Andy Weir")
  end

  #check initialization
  #check that it is an extended from DigitalItem
  #check that it is an instance of Ebook

  describe 'Initialization' do
      it "should be an EBook" do
        expect(@ebook).to be_instance_of(EBook)
      end

      it "should be a Digital Item" do
        expect(@ebook).to be_kind_of(DigitalItem)
      end

      it "is assigned a name" do
        expect(@ebook.name).to eq("The Martian")
      end

      it "is assigned a price" do
        expect(@ebook.price).to eq(5.44)
      end

      it "is assigned pages" do
        expect(@ebook.pages).to eq(385)
      end

      it "is assigned an author" do
        expect(@ebook.author).to eq("Andy Weir")
      end
  end

  #check getters and setters
  describe 'getters and setters' do
      it 'assigns and reads the pages' do
        @ebook.pages = 420
        expect(@ebook.pages).to eq(420)
      end

      it 'assigns and reads the author' do
        @ebook.author = 'Hemingway'
        expect(@ebook.author).to eq('Hemingway')
      end
   end
end
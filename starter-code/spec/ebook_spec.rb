require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    #initialize item
    @ebook = EBook.new( 30, "author")
  end

  #check initialization
  describe 'Initialization' do
    it "is an instance of the EBook class" do
      expect(@ebook).to be_a(EBook)
    end
  end
  #check that it is an extended from Item
    describe 'Extension' do
      it "is extended from DigitalItem" do
        expect(@ebook).to be_an(DigitalItem)
      end
    end
  #check that it is an instance of Movie
    describe 'Instance' do
    it "is an instance of the DigitalItem class" do
      expect(@ebook).to be_instance_of(EBook)
    end
  end
  #check getters and setters
  describe 'Accessors' do
    it "should be able to set/get pages" do
      @ebook.pages = 75
      expect(@ebook.pages).to eq(75)
    end  
    it "should be able to set/get artist" do
      @ebook.author = "SomeDude"
      expect(@ebook.author).to eq("SomeDude")
    end
  end

end


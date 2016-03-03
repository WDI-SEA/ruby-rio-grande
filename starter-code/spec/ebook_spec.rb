require_relative 'spec_helper'
require_relative '../lib/EBook'

describe Ebook do
  before(:context) do
    @ebook = Ebook.new('Lord of the flies', 12, 1000, 'william golding')
  end


#check initialization
  describe 'Initialization' do
    it 'should be an Ebook' do
      expect(@ebook).to be_instance_of(Ebook)
    end

    it "is assigned a name" do
      expect(@ebook.name).to eq("Lord of the flies")
    end

    it "is assigned a price" do
      expect(@ebook.price).to eq(12)
    end

    it "is assigned pages" do
      expect(@ebook.pages).to eq(1000)
    end

    it "is assigned an author" do
      expect(@ebook.author).to eq('william golding')
    end

    it 'should be an item' do
      expect(@ebook).to be_kind_of(DigitalItem)
    end

  end
  #check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @ebook.name = 'Paradise Lost'
      expect(@ebook.name).to eq('Paradise Lost')
    end

    it 'assigns and reads the price' do
      @ebook.price = 20.00
      expect(@ebook.price).to eq(20.00)
    end

    it 'assigns and reads the pages' do
      @ebook.pages = 200
      expect(@ebook.pages).to eq(200)
    end

    it 'assigns and reads the author' do
      @ebook.author = 'John Milton'
      expect(@ebook.author).to eq('John Milton')
    end
  end

end

require_relative 'spec_helper'
require_relative '../lib/EBook'

describe Ebook do

  before(:context) do
    @ebook = Ebook.new('Cats', 10, 100, 'Bob')
  end

#check initialization
  describe 'Initialization' do

    it 'Should be an eBook' do
      expect(@ebook).to be_instance_of(Ebook)
    end

    it 'Should be a Digital Item' do
      expect(@ebook).to be_kind_of(DigitalItem)
    end

    it 'Should be assigned a name' do
      expect(@ebook.name).to eq('Cats')
    end

    it 'Should be assigned a price' do
      expect(@ebook.price).to eq(10)
    end

    it 'Should be assigned pages' do
      expect(@ebook.pages).to eq(100)
    end

    it 'Should be assigned an author' do
      expect(@ebook.author).to eq('Bob')
    end
end 

# check getters and setters
  describe 'Getters and Setters' do
    it 'assigns and reads the name' do
      @ebook.name = 'Dogs'
      expect(@ebook.name).to eq('Dogs')
    end

    it 'assigns and reads a price' do
      @ebook.price = 15
      expect(@ebook.price).to eq(15)
    end

    it 'assigns and reads the pages' do
      @ebook.pages = 200
      expect(@ebook.pages).to eq(200)
    end

    it 'assigns and reads the author' do
      @ebook.author = 'God'
      expect(@ebook.author).to eq('God')
    end
  end
end
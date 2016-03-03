require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do
  
  before(:context) do
    @ebook = EBook.new('Boo', 15, 200, 'Ghost')
  end

  describe 'initialize' do
    it 'should be a EBook' do
      expect(@ebook).to be_instance_of(EBook)
    end

    it 'should be a digital item' do
      expect(@ebook).to be_kind_of(Digital)
    end

    it 'should have a name' do
      expect(@ebook.name).to eq('Boo')
    end

    it 'should have a price' do
      expect(@ebook.price).to eq(15)
    end

    it 'should have pages' do
      expect(@ebook.pages).to eq(200)
    end

    it 'should have an author' do
      expect(@ebook.author).to eq('Ghost')
    end
  end

  describe 'ship_price, selling, returning, and stocking' do

    it 'should remain quantity 1 after sell' do
      @ebook.sell(20)
      expect(@ebook.quantity).to eq(1)
    end

    it 'should remain quantity 1 after stock' do
      @ebook.stock(10)
      expect(@ebook.quantity).to eq(1)
    end

    it 'should not add returned amount to quantity' do
      @ebook.return(2)
      expect(@ebook.quantity).to eq(1)
    end

    it 'should return ship price' do
      @ebook.ship_price
      expect(@ebook.ship_price).to eq(false)
    end
  end

  describe 'getting and setting' do

    it 'assigns and reads the name' do
      @ebook.name = 'Sea'
      expect(@ebook.name).to eq('Sea')
    end

    it 'assigns and reads the price' do
      @ebook.price = 2
      expect(@ebook.price).to eq(2)
    end

    it 'assigns and reads the pages' do
      @ebook.pages = 20
      expect(@ebook.pages).to eq(20)
    end

    it 'assigns and reads the author' do
      @ebook.author = 'Ocotopus'
      expect(@ebook.author).to eq('Ocotopus')
    end

    it 'eads the quantity' do
      expect(@ebook.quantity).to eq(1)
    end

  end

end
# You are on your own... good luck.

require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    # initialize item

    @ebook = EBook.new ("EBook Title", 2.99, 33, "Author Name")
  end

  #check initialization
  describe "Initialization" do
    it "is an instance of the EBook class" do
      expect(@ebook).to be_instance_of(EBook)
    end
    it "extends from the DigitalItem class" do
      expect(EBook).to be < DigitalItem
    end
  end

  #check getters and setters
  it "getters" do
    expect(@ebook.name).to eq("New Title")
  end
  
  it "setters"do
  @ebook.pages = 46
  expect(@ebook.pages).to eq(46)
  end

end
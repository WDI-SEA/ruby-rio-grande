require_relative 'spec_helper'
require_relative '../lib/EBook'

describe EBook do

  before(:context) do
    @ebook = EBook.new(200, "Stephen King")
  end

  describe "Initialization" do
    it "is extended from Digitalitem" do
      expect(@ebook).to be_kind_of(Digitalitem)
    end
    it "is an instance of Books" do
      expect(@ebook).to be_instance_of(EBook)
    end
    it "should have an Author of Stephen King" do
      expect(@ebook.author).to eq("Stephen King")
    end
  end

end

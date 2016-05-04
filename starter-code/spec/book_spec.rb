require_relative 'spec_helper'
require_relative '../lib/Book'

describe Book do

  before(:context) do
    @book = Book.new(321, "Stephen King")
  end

describe "Initialization" do
    it "is extended from Item" do
      expect(@book).to be_kind_of(Item)
    end
    it "is an instance of Books" do
      expect(@book).to be_instance_of(Book)
    end
    it "should have an Author of Stephen King" do
      expect(@book.author).to eq("Stephen King")
    end
  end

end

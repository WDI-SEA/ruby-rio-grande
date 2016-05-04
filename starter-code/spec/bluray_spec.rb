require_relative 'spec_helper'
require_relative '../lib/Bluray'

describe Bluray do

  before(:context) do
    #initialize item
    @bluray = Bluray.new("Phillips", 79.99)
  end

  #check initialization
  #check that it is an extended from Item
  #check that it is an instance of Bluray
  #check getters and setters

end

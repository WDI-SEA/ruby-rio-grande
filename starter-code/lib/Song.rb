require_relative 'Digitalitem.rb'

class Song < Digitalitem

  attr_accessor :run_time, :artist

  def initialize run_time, artist
    super(name,price)
    @run_time = run_time
    @artist = artist
  end

end

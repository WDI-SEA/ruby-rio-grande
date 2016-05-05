require_relative 'DigitalItem.rb'
class Ebook < DigitalItem
  def initialize (name, price, run_time, artist)
    super(name, price)
    @run_time = run_time
    @artist = artist
  end

  def return (amt)
    stock(amt)
    puts "You returned #{amt} items."
  end 

end
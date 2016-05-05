require_relative 'Item.rb'
class Cd < Item
  def initialize (name, price, tracks, artist, run_time)
    super(name, price)
    @tracks = tracks
    @artist = artist
    @run_time = run_time
    @weight = 2
  end

  def ship 
    ship_price(@weight)
  end

  def return (amt)
    stock(amt)
    puts @quantity
  end 
end

test_cd = Cd.new("DopeCd", 2.99, 12, "Beyonce", "47 minutes")

test_cd.ship
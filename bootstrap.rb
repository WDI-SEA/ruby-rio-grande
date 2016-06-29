# Require all classes
require 'pry'

require './src/Item'
require './src/Bluray'
require './src/Book'
require './src/Cd'
require './src/DigitalItem'
require './src/EBook'
require './src/Movie'
require './src/Song'

pry.binding

# Usage Example (in terminal)
#
# # ruby bootstrap.rb

# # i = Item.new "item name",1.99

# # i.name
# output: item name

# # i.quantity
# output: 0

# # i.sell 2
# output: false

# # i.stock 2
# output: true

# # i.quantity
# output: 2

# # i.sell 2
# output: true

# # i.quantity
# output: 0

# ......... etc

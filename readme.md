#Rio Grande

Rio Grande is an online retailer founded by Jerome Basile and named after his favorite river. It started out selling books, but now they sells all sorts of things. They need your OOP / TDD skills to help them create classes for all the different types of items in their online store.

##Development Process

We are creating this using Test Driven Development. As a refresher, here is the basic process:

* Create a test for a feature
* Run the test (it should fail)
* Write code for the feature
* Run test again (it should pass)
* Refactor if necessary

##Working in Pairs (recommended)

Due to the length and complexity of this assignment, it's recommended that you pair up with another person and work on this collaboratively. If you decide to take this route:

* Have one person create the tests
* Have the other person create the code to pass the tests
* Each person should submit the same code via pull request

###Tests
Every class should have tests for all of the following:

* Initializer
* instance_of / inheritance
* getters / setters (for each attribute)
* methods
  * Check return value
  * Check that it behaves as expected
* any other expected behaviors

To run tests use the `rspec` command

###Interactive Console

You can also test things manually in the console using `irb` or `pry` by using `require` to load a class. To make this easier we've included a file called `bootstrap.rb` which loads all of the models and loads the pry interactive console.

**Usage Example (in terminal)**

```
# pry bootstrap.rb

# i = Item.new "item name",1.99

# i.name
output: item name

...
```

##Part 1 - Create basic classes

###Item

* Attributes
  * Price
  * Quantity (In Stock)
  * Name
  * Description
* Initializer
  * Items should initialize with:
    * Name
    * Price
* Methods
  * sell
    * Takes one parameter for the quantity you want to sell.
    * returns true/false on success/failure
    * decrements quantity on success
    * Called when a customer tries to buy a product
  * stock
    * Takes one parameter and increases quantity by that amount.
    * Called when we receive a shipment of a product.


###Music, Movies, and Books

There are many times of items and each has unique attributes. For starters lets create the following classes.

* Book < Item
  * Pages
  * Author
* CD < Item
  * Tracks (number of)
  * Artist
  * Run time
* Bluray < Item
  * Run time
  * Director
  * Producer


You should NOT add the new attributes to the Initializer.

**Usage Example**

```ruby
b = Book.new "Book Title", 12.99
b.pages = 33
b.author = "Author Name"
```

###Digital Items

Oh no the future is here!! Now we need to support digital items. Digital items are things that are downloaded and therefore they do not have a finite quantity.

* DigitalItem < Item
  * Quantity should always be 1
  * Quantity does not decrease when sold
  * Quantity should not increase on stock

###Digital Movies, Books, and Music

* EBook < DigitalItem
  * Pages
  * Author
* Movie < DigitalItem
  * Run time
  * Director
  * Producer
* Song < DigitalItem
  * Run time
  * Artist

##Part 2 - New features

###Customer Returns

All items should have a `return` method that takes an amount. When an item is returned it will be added to the quantity. This is very similar to `stock`, but is called when a customer sends an item back to the warehouse.

DigitalItems can also be returned but the quantity should not be increased.

**Usage Example**

```ruby
#adds 2 to the quantity of book
book.return 2
```


###Shipping Cost

Items need to be able to compute their own shipping cost. To accomplish this we need to do the following:

* All items should have a `weight` attribute (stores weight in oz)
* `weight` defaults to 0 in the initializer
* `weight` should be able to be get/set.
* The `Item` class should have a `ship_price_per_oz` value.
  * All items have the same `ship_price_per_oz`.
  * It does not need to be get/set.
  * Set the value to `1.2` ...because, that's why.
* All items need a `ship_price` method that computes the shipping price for that item by multiplying the `ship_price_per_oz` and the `weight` of the individual item.
* Items with no weight (digital items) should have weight set to -1 to specify there is no weight
* The `ship_price` should return false for items with a weight of -1 (digital items).


**Usage Example**

```ruby
book.weight = 2
book.ship_price
#returns: 2.4

song.ship_price
#returns: false  (because it's digital)

```

###Initializer Refactor

The inventory department needs you to refactor the code to include a 3rd parameter on the initializer, but we need to maintain backwards compatability for old code using 2 parameters.

They want you to be able to call the `.new` method with a 3rd parameter for `weight`. If `weight` is ommitted it should default to 0 for backwards compatability.

**Usage Example**

```ruby
#creates new book, sets weight to 2.2
book1 = Book.new "name", 2.99, 2.2
#creates new book, weight defaults to 0
book2 = Book.new "name", 2.99
```

###Download Size

The Digital Team needs all `DigitalItems` to include a property for download size. It should be able to be get/set.

Additionally, they heard the inventory department got a 3rd initializer parameter so now they want want an *optional* 3rd initializer parameter for download size.

**Usage Example**

```ruby
#creates a song, sets download size to 4
song1 = Song.new "name", 2.99, 4
#crates a song, download size defaults to 0
song2 = Song.new "name", 2.99
```

The `weight` for digital items (in both examples above) should be -1 so calling `ship_price` on a digital item should still return false.

##Part 3 - BONUS - Clothing

If Rio Grande wants to keep up with the other river named online retailers they need to start carrying clothing. The problem is we need to be able to support multiple quantities for a single item (one quantity per size).

###New objects
* ClothingItem < Item
* Shirt < ClotingItem
* Pants < ClothingItem

###Changes
* Add array of sizes (should allow getting, but not setting)
* Create hash to store quantities for each size
* `stock`, `sell`, `return` methods
    * should require 2 parameters (amount and size)
    * should update the appopriate quantity in the hash
* `stock` should add the size to the `sizes` array if it's not already there. It should not create duplicates
* create a `quantity` method (replaces quantity getter)
    * should have 1 optional parameter (size)
    * if ommitted it should return the quantity for all sizes
    * if supplied it should return the quantity for the specified size


###Usage Example
The below code should work as expected on your finished code

```ruby
#create a new shirt, for $19.99 that weighs 12 ounces
shirt = Shirt.new "Bob Ross T-Shirt", 19.99, 12

#returns: []  (there are no sizes defined)
shirt.sizes

#add quantities for large and small
shirt.stock 5, "large"
shirt.stock 3, "small"

# returns: ["large","small"]
shirt.sizes

#returns: 8 (total quantity all sizes)
shirt.quantity

#returns: 3 (quantity of small)
shirt.quantity "small"

# sells 2 small shirts. reduces small shirt from 3 to 1. returns true
shirt.sell 2, "small"

#returns: 1 (quantity of small after sale)
shirt.quantity "small"

#returns: true. adds 1 to quantity of small
shirt.return 1, "small"

#adds 3 more small items (total quantity is 5)
shirt.stock 3, "small"

# returns: ["large","small"]  (no duplicate "small")
shirt.sizes

```

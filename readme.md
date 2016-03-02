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

Due to the TDD-nature of this assignment, it's recommended that you pair up with another person and work on this collaboratively. If you decide to take this route:

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

Item has already been created for you, along with the tests for Item. Take a look at the file and inspect what the class does.

###Music, Movies, and Books

Next, let's make the following classes that inherit from Item. Each class should have the following instance variables, as well as inherit from Item by calling the `super` method to pass the name and price.

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


**Usage Example**

```ruby
b = Book.new "Book Title", 12.99, 33, "Author Name"
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
  * Set the value of `ship_price_per_oz` to `1.2`
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

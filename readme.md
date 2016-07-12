#Rio Grande

Rio Grande is an online retailer founded by Jerome Basile and named after his favorite river. It started out selling books, but now they sells all sorts of things. They need your OOP / TDD skills to help them create classes for all the different types of items in their online store.

##Getting Started

* Fork and clone this repository
* Run `bundle install` to install dependencies
  * Run `rubocop` to lint your code
  * Run `rspec` to run the test suite

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

# i = Item.new('candy', 1.99)

# i.name
# => "candy"
```

##Requirements

###Item

Item has already been created for you, along with the tests for Item. Take a look at the file and inspect what the class does.

###Music, Movies, and Books

Next, let's make the following classes that inherit from Item. Each class should have the following instance variables, as well as inherit from Item by calling the `super` method to pass the name and price.

* Book < Item
  * Pages
  * Author
* Cd < Item
  * Tracks (number of)
  * Artist
  * Run time
* Bluray < Item
  * Run time
  * Director
  * Producer


**Usage Example**

```ruby
b = Book.new('Book Title', 12.99, 33, 'Author Name')
```

###Digital Items

Oh no the future is here!! Now we need to support digital items. Digital items are things that are downloaded and therefore they do not have a finite quantity.

* DigitalItem < Item
  * Quantity should always be 1
  * Quantity does not decrease when sold
  * Quantity should not increase on stock

---

## Licensing
1. All content is licensed under a CC-BY-NC-SA 4.0 license.
2. All software code is licensed under GNU GPLv3. For commercial use or alternative licensing, please contact legal@ga.co.

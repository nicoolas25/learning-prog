#
# We've seen different data types. We've written small programs.
# What about bigger programs? Bigger programs requires more organisation.
# Why? Because writing programs as we did it until now can get very
# confusing, because you may want to be able to split and share the
# programming or because you may want to reuse pieces of code without
# copy/pasting them.
#
# One widespread programming paradigm is Object Oriented Programming.
#

# Class declaration

class Player
end

# Instanciation

player = Player.new
player.class

# Everything is object

3.class
"Alice".class
3.class.class

#
# Since the begining, we've used  lot of methods. Actually even the basic
# arithmetic and logical operators are methods.
#

# Methods

class Player
  def name
    return "Alice"
  end
end

player_1 = Player.new
player_2 = Player.new

player_1.name
player_2.name

# Instance variables & parameters

class Player
  def name
    return @name
  end

  def name=(name)
    @name = name
  end
end

player_1 = Player.new
player_2 = Player.new
player_1.name
player_1.name = "Alice"
player_1.name
player_2.name

# Initialization, default parameters & attr_reader

class Player
  def initialize(name, money = 0)
    @name = name
    @money = money
  end

  def name
    return @name
  end

  attr_reader :money
end

player = Player.new("Alice")
player.name
player.money


#
# Notes:
#
#   - Return keyword is implicit
#   - There is also `attr_writer` and `attr_accessor`
#

#
# Exercise
#
# Write a user/password validation class name `IdentityValidator`. This class
# must have the following API:
#
#   - Initialize with two parameters: identifier and password
#   - A method called: `valid?` method that return true if:
#     - the identifier is at least 6 character long
#     - the password is at least 6 character long
#     - the password contains at least 1 uppercase letter and 1 lowercase letter
#
#
# Add to the `Player` class two methods that are adding or removing money:
#
#   - `deposit(amount)`
#   - `withdraw(amount)`
#
# What can go wrong with these methods?
#
# Both of these methods return a `MoneyOperationResult` instance. Here is the
# implementation of such a class:
#
# class MoneyOperationResult
#   attr_accessor :reason
#
#   def initialize(success, reason = nil)
#     @success, @reason = success, reason
#   end
#
#   def success?
#     @success
#   end
# end
#
# What is the interest of using the `MoneyOperationResult` class?

#
# We've seen that objects were a lot about isolating some behaviour
# and variables from the rest of the world. Organising the code into
# objects can make the code clearer. Sometime, objects can be very
# similar. There is different ways of sharing behaviours (ie: code)
# between objects.
#

# Inheritance

class SwissAccount < Account
  def name
    return "Anonymous"
  end
end

account = SwissAccount.new("Alice")
account.name

# Inheritance & superclass

# In the previous example, the name `Alice` is still known in the
# SwissAccount. To prevent this, lets override the constructor method.

class SwissAccount < Account
  def initialize(name, money = 0)
    super("Anonymous", money)
  end
end

#
# Exercise
#
# Your developping a game and want to keep track of your customer. Some
# customers are paying other aren't. Every customer have in common their
# id, name, email, and registration date. Customers that are paying have
# also a date of last payment. Customers that are by default in trial
# for 30 days. PayingCustomer can play as long as their payment is in the
# last 30 days.
#
# Write a program that can tell if a customer can play the game or not. You
# must use 2 classes: `Customer` and `PayingCustomer`. Each of the classes
# must have a method, `can_play?` that is returning a boolean.
#

# Mixin or modules

# Another way of sharing code, in Ruby, is to use modules. Here is an example
# of a class that includes a module:

module DummyComparable
  def >(other)
    self.<=>(other) == 1
  end

  def >=(other)
    self.<=>(other) >= 0
  end

  def <(other)
    self.<=>(other) == -1
  end

  def <=(other)
    self.<=>(other) <= 0
  end

  def <=>(other)
    fail "Method `<=>` must be implemented by this subclass of DummyComparable"
  end
end

class Car
  include DummyComparable

  attr_accessor :power

  def <=>(other)
    if other.is_a?(Car)
      power <=> other.power
    else
      false
    end
  end
end

#
# Exerise
#
# Read about the `Enumerable` module of the Ruby library.
#

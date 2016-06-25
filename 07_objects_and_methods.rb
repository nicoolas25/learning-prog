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

class Account
end

# Instanciation

account = Account.new
account.class

# Everything is object

3.class
"Alice".class
3.class.class

#
# Since the begining, we've used  lot of methods. Actually even the basic
# arithmetic and logical operators are methods.
#

# Methods

class Account
  def name
    return "Alice"
  end
end

account_1 = Account.new
account_2 = Account.new

account_1.name
account_2.name

# Instance variables & parameters

class Account
  def name
    return @name
  end

  def name=(name)
    @name = name
  end
end

account_1 = Account.new
account_2 = Account.new
account_1.name
account_1.name = "Alice"
account_1.name
account_2.name

# Constructor, default parameters & attr_reader

class Account
  def initialize(name, money = 0)
    @name = name
    @money = money
  end

  def name
    return @name
  end

  attr_reader :money
end

account = Account.new("Alice")
account.name
account.money


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
# Hint: Have a look at the Regexp class.
#
#
# Add to the `Account` class two methods that are adding or removing money:
#
#   - `deposit(amount)`
#   - `withdraw(amount)`
#
# What can go wrong with these methods?
#
# Both of these methods return a `OperationResult` instance. Here is the
# implementation of such a class:
#
# class OperationResult
#   attr_accessor :reason
#
#   def initialize(success, reason = nil)
#     @success, @reason = success, reason
#   end
#
#   def success?
#     @success
#   end
#
#   def to_s
#     if success?
#       "Success"
#     elsif reason.nil?
#       "Failure: #{reason}"
#     else
#       "Failure: no reason given"
#     end
#   end
# end
#
# What is the interest of using the `OperationResult` class?

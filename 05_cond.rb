#
# In the previous exercise, we said, good morning. What if it was the afternoon?
# In this section, you'll learn how a program can adopt different behaviors
# depending on conditions.
#

# If

name = gets.strip

if name == "Alice"
  puts "This is a wonderful name!"
end

# Else

if name == "Bob"
  puts "Hello Robert!"
else
  puts "Hello #{name}!"
end

# Elsif

number = gets.strip.to_i

if number < 0
  puts "#{number} is negative"
elsif number > 0
  puts "#{number} is positive"
else
  puts "#{number} is zero"
end

# Case

name = gets.strip

case name
when "Alice"
  puts "This is a wonderful name!"
when "Bob"
  puts "Hello Robert!"
else
  puts "Hello #{name}!"
end

# Conditionals are expressions too

number = gets.strip.to_i

number_type =
  if number < 0
    "negative"
  elsif number > 0
    "positive"
  else
    "zero"
  end

puts "#{number} is #{number_type}"

#
# Exercise:
#
# Write a program that greet you with a different message depending on
# the time of the day.
#
# Hint: Look at the `Time` documentation:
#
#   - http://devdocs.io/ruby~2.3/time#method-c-now
#
#
# Write a program that ask the user for a integer between 5 and 10 and
# tell the user if was he wrote was right or wrong.
#
# Hint: Look at the `Range` documentation:
#
#   - http://devdocs.io/ruby~2.3/range
#
#
# Modifiy the previous program to say when the input is under 5 or over 10.

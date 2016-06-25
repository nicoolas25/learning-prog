#
# Another important control flow tools are loops. Loops are useful to
# iterate over collections, to repeat some operations, etc.
#

# While

exit_answer = "no"

while exit_answer != "yes"
  puts "What is your name?"
  name = gets.strip
  puts "Hello #{name}!"

  puts "Do you want to exit the program (no/yes)?"
  exit_answer = gets.strip
end

# Until

# Same as previous but change this line:
#
#   while exit_answer != "yes"
#
# to:
#
#   until exit_answer == "yes"

# For loop

collection = [1, 2, 3]

for element in collection
  puts "#{element} is in the collection"
end

#
# Enumerable module: http://devdocs.io/ruby~2.3/enumerable
#

# Each

collection.each do |element|
  puts "#{element} is in the collection"
end

#
# Exercise
#
# What is the following program doing:
#
#   puts "Enter a number >= 0: "
#   n = gets.to_i
#   a = 1
#   while (n > 1)
#     a = a * n
#     n = n - 1
#   end
#   puts a
#
#
# Write a program that uses a loop to calculate the remaining of
# an integer division (ie: 4 / 3 has a remaining of 1).
#
#
# Write a calculator program that never stops.
#
# Hint: Look at the String#split documentation:
#
#   - http://devdocs.io/ruby~2.3/bigdecimal#method-i-split

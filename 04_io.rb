#
# This is the first step to build our first program.
# This is showing you how to interect with the user.
#

# Writing text

puts "Alice is a woman"

# Reading text

text = gets

# Writings programs into files

# Write you code into a new empty file.
# The filename should be followed by the `.rb` extension.

# Running a program

# Type the following command: `ruby my_program.rb`. To pass arguments to
# such a program, call it like this: `ruby my_program.rb Alice`. To retrieve
# the arguments you passed in your program, use look at the ARGV constant.

#
# Exercise:
#
# Write a program that greet you by your name.
# The program should ask you for your name, lets say you answer Alice.
# After that, the program write you a nice "Good morning Alice!".
#

# Debugging

# To debug a Ruby program, you can use the `pry-byebug` gem. To do so:
#
#   - At the beginning of a program add: `require "pry-byebug"`
#   - At some point, add the following line: `binding.pry`
#
# This will open an interactive session with all the previous context.

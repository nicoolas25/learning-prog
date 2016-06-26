#
# Closures are not available in every programming language. It is in Ruby
# and since it is a powerful abstraction for programming and it is so widely
# used, we should explore them a bit more...
#

# Proc looks like a method

prompt_user = Proc.new do |question|
  puts question
  gets.strip                                   # The Proc have a return value
end

name = prompt_user.call("What's your name?")   # There is two different syntax
age = prompt_user["How old are you?"]          # for calling the Proc.

# Proc are objects & arguments splats

def measure(code, *arguments)
  started_at = Time.now
  result = code.call(*arguments)
  stoped_at = Time.now
  {
    "result" => result,
    "elapsed_time" => stoped_at.to_f - started_at.to_f,
  }
end

name_measurement = measure(prompt_user, "What's your name?")
age_measurement = measure(prompt_user, "How old are you?")

if name_measurement["elapsed_time"] >= age_measurement["elapsed_time"]
  puts "How know better your age than your name!"
else
  puts "How know better your name than your age!"
end

# Blocks

def measure(&code)                           # The difference is the `&`
  started_at = Time.now
  result = code.call
  stoped_at = Time.now
  {
    "result" => result,
    "elapsed_time" => stoped_at.to_f - started_at.to_f,
  }
end

measurement = measure { prompt_user("What's your name?") }
measurement = measure do
  prompt_user("How old are you?")
end

#
# Exercise
#
# Write a `do_until` method that is repeating the given bloc until its output is
# `true`. The following code should work and prompt the user until he type `yes`:
#
#   do_until do
#     puts "Do you want to leave (yes/no)?"
#     gets.strip == "yes"
#   end
#
#
# Write a method that compose two Proc. It use the result of the first one as the
# argument for the second one. It return a new Proc.
#
# Here is one example of usage of such a method:
#
#   convert_to_integer = Proc.new { |value| value.to_i }
#   prompt_age = Proc.new { prompt_user("How old are you?") }
#   prompt_integer_age = compose(prompt_age, convert_to_integer)
#   age = prompt_integer_age.call
#
#
# Write a method that takes an Array and a Proc (or block). It returns `true` when for
# each element of the array, the proc evaluate to true. For instance:
#
#   all_true?(array) { |element| element.even? }
#
# Note that there is a special syntax for this:
#
#   all_true?(array, &:even?)
#
# You will see later that such a method already exists.

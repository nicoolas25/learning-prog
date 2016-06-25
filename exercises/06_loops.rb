def remaining
  puts "Enter the number to divide?"
  number = gets.strip.to_i
  puts "Enter the divider?"
  divider = gets.strip.to_i

  while number < divider
    number = number - divider
  end

  return number
end

def calculator
  while true
    print "> "
    line = gets.strip
    number_1, operator, number_2 = line.split(" ")
    number_1 = number_1.to_i
    number_2 = number_2.to_i
    result =
      case operator
      when "+"
        number_1 + number_2
      when "-"
        number_1 - number_2
      when "*"
        number_1 * number_2
      when "/"
        number_1 / number_2
      else
        puts "unknown operation"
      end
    puts result
  end
end

def max
  max = ARGV.first.to_i
  for number in ARGV
    if max < number.to_i
      max = number.to_i
    end
  end
  max
end

puts max

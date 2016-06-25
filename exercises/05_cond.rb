def if_greeting
  hour = Time.now.hour
  if hour < 4
    puts "Good night, it's time to go to bed now..."
  elsif hour < 12
    puts "Good morning!"
  elsif hour < 18
    puts "Good afternoon!"
  elsif hour < 22
    puts "Good evening!"
  else
    puts "Good night!"
  end
end

def case_greeting
  hour = Time.now.hour
  case hour
  when 0..3
    puts "Good night, it's time to go to bed now..."
  when 4..11
    puts "Good morning!"
  when 12..17
    puts "Good afternoon!"
  when 17..21
    puts "Good evening!"
  else 22..23
    puts "Good night!"
  end
end

def prompt_integer
  puts "Write an integer between 5 and 10"
  text = gets.strip
  number = text.to_i
  if number < 5
    puts "You entered '#{text}' that is not below 5"
  elsif number > 10
    puts "You entered '#{text}' that is not over 10"
  else
    puts "You did great!"
  end
end

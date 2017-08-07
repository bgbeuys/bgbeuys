require_relative("calculation")

# interface.rb

# Pseudo-code (what are the steps in plain english):

# 1. Say hello to the user (or exit)
  puts "Welcome to our calculator!"

def prompt(message)
   puts message
   print "> "
   cmd = gets.chomp
   exit if cmd == "exit"
   return cmd
end

def validate_operation!(operation)
  unless %w{+ - * /}.include?(operation)
    puts "Sorry! Illegal action"
    exit
  end
end



# 2. ask for the first number (or exit)
while true
  # puts "Enter your first number (or exit):"
  # print "> "
  # cmd = gets.chomp
  # exit if cmd == "exit"
  # first = cmd.to_i
  first = prompt("Enter your first number (or exit):").to_i

  # puts first

# 3. ask for operation (or exit)
  # puts "Enter operation [+, -, *, /] (or exit)"
  # print "> "
  # cmd = gets.chomp
  # exit if cmd == "exit"
  # operation = cmd

  operation = prompt("Enter operation [+, -, *, /] (or exit)")
  validate_operation!(operation)

  #second = cmd.to_i

# # 4. ask for second number
  # puts "Enter your second number (or exit):"
  # print "> "
  # cmd = gets.chomp
  # exit if cmd == "exit"
  # second = cmd.to_i

  second = prompt("Enter your second number (or exit):").to_i


# # 5. perform calculation
result = calculate(first, operation, second)
  # case operation
  # when "+"
  #   result = first + second
  # when "-"
  #   result = first - second
  # when "*"
  #   result = first * second
  # when "/"
  #   result = first / second
  # end

# # # 6. show result
  puts "calculating..."
  sleep(1)
  puts result

# # # 7. go back to 2

  # puts "Want to add another number (or exit):"
  # print "> "
  # cmd = gets.chomp
  # exit if cmd == "exit"
  # first = cmd.to_i
  # puts first
end


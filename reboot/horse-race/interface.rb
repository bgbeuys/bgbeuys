# 1. Print welcome
puts "Welcome to the Chengdu 25th International Racing Club."
sleep(1)

puts "The horses are ready..."
sleep(1)

puts "Take a look who is at the start"
sleep(1)
# 2. Print the horses' name (use hash)

Horse_num = {
    "1" => "Wind",
    "2" => "Speed",
    "3" => "Storm",
    "4" => "Kwik",
    "5" => "Schnell",
    "6" => "Ente",
    "7" => "Tornado"
  }

Horse_num.each do |key, value|
  puts "Horse number #{key} has the name #{value}."
end
sleep(1)

# 2. Ask the user on which horse he wants to bet.
#   num => horse
puts "Please make your bet. Which horse do you think will win the race?"


# 3. Get the user's bet (prompt for the horse num)
print "> "
user_bet = gets.chomp

# 4. Validate the num

unless Horse_num.key?(user_bet)
puts "This horse does not exist, try again!"
print "> "
user_bet = gets.chomp
end
puts "Good luck with your horse!"
sleep(3)
# 5. Run the race (sample? improve: shuffle?)
puts "The winning horse today is:"

winning_horse = Horse_num.keys.sample

#Horse_num.to_a.sample


# 6. Inform the user if he has won
sleep(1)

Horse_num[winning_horse]
if winning_horse == user_bet
  puts "You are a real winner:-) #{Horse_num[winning_horse]}"
elsif winning_horse != user_bet
  puts "Not today my friend... goood luck the next time!"
end
#puts " "


# 7. Make him speak `say "hello world"`









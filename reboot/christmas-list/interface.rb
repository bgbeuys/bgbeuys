# 1. Welcome the client

puts "Welcome to your christmas wishlist. Please follow the instructions."
sleep(1)
# 2. Display menu (list / add / delete / mark )
puts "What would you like to do? Choose the following options:"
sleep(1)

puts "list, add, delete, mark"

wish_list = ["jacket", "pullover", "socks", "shirt", "book", "wine", "kitt"]

while true

  sleep(1)
  puts ">"
  action_user = gets.chomp

  case action_user

  when "list"
    wish_list.each do |item|
      puts "#{item}"
    end
      # iterate the list and print them

  when "add"
      # item_selection = gets.chomp
      # wish_list << item_selection.to_s

    item_selection = nil

      # while item_selection != "checkout"
    puts "Please add an item:"
    print "> "
#
    item_selection = gets.chomp

    puts "Your item #{item_selection} is stored. Please choose the next action."
       # if item_selection.
    wish_list << item_selection.to_s
    puts "You have #{wish_list.join(',')} in your wishlist."




          #item_selection = gets.chomp
          #puts "Item not available"
        #end
      # end
      #add the item to wish list

  when "delete"
    puts "Which item do you want to delete from your shopping cart?"
           item_selection = gets.chomp

    wish_list.each do |item_selection|
    wish_list.delete_at(wish_list.index(item_selection))
    end


      # remove the item from wish list

    # when action_user == "mark"
    #   puts "Plese select the item you would like to add to your shopping cart: "
    #   item_selection = gets.chomp
    #else
      #puts "Thank you for your vist. Goodbye and have a nice day."

    end
end



#puts "Thank your for your purchase."
#action_user = gets.chomp


# 3. Client decides his action => (list / add / delete / mark )

# 4. Perform the according action until he quits

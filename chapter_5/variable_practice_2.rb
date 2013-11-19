# Ask for favorite number, then suggest larger number as favorite

puts "What is your favorite number?"
fav_num = gets.chomp.to_i

fav_num += 1

puts "How about " + fav_num.to_s + "? I like that one better."
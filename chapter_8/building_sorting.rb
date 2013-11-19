# Asks user to type as many words as is wanted. When empty line is entered
# returns list of typed words in alphabetical order (all words are lower case)

puts 'Enter word followed by Enter to add. Hit Enter to return list'
word_array = []

while true
	new_word = gets.chomp
	if new_word == ''
		break
	end
	word_array.push new_word.downcase
end

puts word_array.sort


# Takes an array of words and returns a shuffled array using recursion

test_word_array = ['apple', 'bob', 'jesse', 'john', 'noora', 'noora']

def shuffle some_array #wrapper
	recursive_shuffle some_array, []
end

def recursive_shuffle unshuffled_array, shuffled_array
	shuffled_index = rand(unshuffled_array.length)
	shuffled_array.push(unshuffled_array[shuffled_index])
	unshuffled_array.delete_at(shuffled_index)

	if unshuffled_array.length > 0 #recursive step
		recursive_shuffle(unshuffled_array, shuffled_array)
	end

	return shuffled_array	
end

puts shuffle(test_word_array)



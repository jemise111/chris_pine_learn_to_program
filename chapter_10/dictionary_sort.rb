# Sorts an array of words without using Ruby's built in "Sort" method,
# using recursion

test_word_array = ['Jesse', 'john', 'noora', 'Bob', 'apple', 'noora']

def sort some_array #wrapper
	recursive_sort some_array, []
end

def recursive_sort unsorted_array, sorted_array
	smallest_index = 0
	for i in 0..unsorted_array.length - 1
		if unsorted_array[i].downcase < unsorted_array[smallest_index].downcase
			smallest_index = i
		end
	end

	sorted_array.push(unsorted_array[smallest_index])
	unsorted_array.delete_at(smallest_index)

	if unsorted_array.length > 0 #recursive step
		recursive_sort(unsorted_array, sorted_array)
	end
	
	return sorted_array	
end

puts sort(test_word_array)



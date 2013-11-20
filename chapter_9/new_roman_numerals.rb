# Asks user for number between 1 and 3000. Prints Modern Roman 
# Numeral version of that number.

while true
	puts 'Enter an integer between 1 and 3000'
	num = gets.chomp.to_i
	if num >= 1 && num <= 3000
		break
	end
end

def to_new_roman_num num
	#initializes empty result string and character array
	result = ''
	char_array = ['M', 'D', 'C', 'L', 'X', 'V', 'I']

	#initializes array with thous, hunds, tens, ones placeholders
	num_array = []
	divisor = 1000
	4.times do
		num_array.push(num / divisor)
		num %= divisor
		divisor /= 10 	
	end

	#special case for thousands
	result += char_array[0] * num_array[0]

	#loops through hundreds, tens, ones, checks for special cases 4 and 
	#9, converts to numerals using the character array. 
	i = 1
	j = 1
	while i < num_array.length
		if num_array[i] == 9
			result += char_array[j+1] + char_array[j-1]
		elsif num_array[i] == 4
			result += char_array[j+1] + char_array[j]
		elsif num_array[i] >= 5
			result += char_array[j] + char_array[j+1] * (num_array[i] - 5)
		else
			result += char_array[j+1] * num_array[i]
		end
		i += 1
		j += 2
	end

	return result
end        

puts to_new_roman_num num


# Takes a roman numeral and converts to integer

def roman_to_integer roman_string
	result = 0
	char_hash = {'m' => 1000, 'd' => 500, 'c' => 100, 'l' => 50, 
		'x' => 10, 'v' => 5, 'i' => 1}
	
	#take care of last character
	result += char_hash[roman_string.downcase[roman_string.length-1]]

	i = roman_string.length - 2
	while i >= 0
		char = roman_string.downcase[i]
		next_char = roman_string.downcase[i + 1]
		if !char_hash.include?(char)
			puts "Not a valid roman numeral"
			exit
		end
		if char_hash[char] >= char_hash[next_char]
			result += char_hash[char]
		else
			result -= char_hash[char]
		end
		i -= 1
	end
	return result
end

# Check if input string contains non-letter characters
def is_valid_string? string
	result = true
	string.split("").each do |c|
		if !c.downcase.match(/^[[:alpha:]]$/)
			result = false
		end
	end
	return result
end

while true
	puts 'Enter a roman numeral:'
	input = gets.chomp
	if !is_valid_string?(input)
		puts 'Letters only please'
	else
		puts roman_to_integer(input)
		break
	end
end

# Asks user for number between 1 and 3000. Prints Old School Roman 
# Numeral version of that number.

while true
	puts 'Enter an integer between 1 and 3000'
	num = gets.chomp.to_i
	if num >= 1 && num <= 3000
		break
	end
end

def to_old_roman_num num
	result = ''
	divisor = 1000
	i = 0
	char_array = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
	char_array.each do |char|
		result += char * (num / divisor)
		num %= divisor
		if i % 2 == 0
			divisor /= 2
		else
			divisor /= 5
		end
		i += 1
	end
	return result
end        

puts to_old_roman_num num		
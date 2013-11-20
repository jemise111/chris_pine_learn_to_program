# writes out english version of a positive number from 0 to 1,000,000

def expanded_english_number number 
	if !(number >= 0 && number <= 1000000)
		puts '0 to 1,000,000 please!'
	end

	result = '' #string we will eventually return

	if number == 0
		result += 'zero'
	end

	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'fourty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teens = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']

	display = number / 1000000
	if display == 1
		result += 'one million'
		number = 0
	end

	display = number / 1000
	number -= display * 1000
	if display > 0
		result += expanded_english_number(display) + ' thousand ' #recursive step
	end

	display = number / 100
	number -= display * 100
	if display > 0
		result += ones_place[display - 1] + ' hundred '
	end

	display = number / 10
	number -= display * 10
	if display > 1
		result += tens_place[display - 1]
		if number > 0
			result += '-'
		end
	elsif display == 1 && number > 0
		result += teens[number - 1]
		number = 0
	end

	if number > 0
		result += ones_place[number - 1]
	end

	return result

end

while true
	puts 'enter number (use -1 as sentinel)'
	number = gets.chomp.to_i
	if number == -1
		break
	end
	puts expanded_english_number(number)
end






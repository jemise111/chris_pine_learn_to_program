# Print lyrics to 99 bottles of beer on the wall... using english letters


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

n_beers = 9999
bottles_string = ' bottles'

def get_bottle_string n_beers
	if n_beers == 1
		return ' bottle'
	else
		return ' bottles'
	end
end

while n_beers > 0
	puts expanded_english_number(n_beers) + get_bottle_string(n_beers) + ' of beer on the wall, ' + expanded_english_number(n_beers) + get_bottle_string(n_beers) + ' of beer; 
	take one down, pass it around, ' + expanded_english_number(n_beers - 1) + get_bottle_string(n_beers - 1) + ' of beer on the wall.'
	n_beers -= 1
end
# Print lyrics to 99 bottles of beer on the wall

n_beers = 99
bottles_string = ' bottles'

while n_beers > 0
	if n_beers == 1
		bottles_string = ' bottle'
	end
	puts n_beers.to_s + bottles_string + ' of beer on the wall, ' + n_beers.to_s	+ bottles_string + ' of beer; 
	take one down, pass it around, ' + (n_beers - 1).to_s + bottles_string + ' of beer on the wall.'
	n_beers -= 1
end
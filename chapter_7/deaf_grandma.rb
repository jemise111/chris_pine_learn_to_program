# Grandma shouts back when letters aren't capitalized. When they are Grandma
# yells back with a randomly generated year

bye_counter = 0
while bye_counter < 3
	say_to_grandma = gets.chomp
	if say_to_grandma == 'BYE'
		bye_counter += 1
	else
		bye_counter = 0
		if say_to_grandma == say_to_grandma.upcase #if shouted
			puts 'NO, NOT, SINCE ' + (rand(21) + 1930).to_s + '!'
		else
			puts 'HUH?! SPEAK UP, SONNY!'
		end
	end
end

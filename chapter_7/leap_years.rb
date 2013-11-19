# Takes start year and end year and prints all leap years between them

puts 'Start year?'
start_year = gets.chomp.to_i
while start_year < 400
	puts 'Enter a year greater than 400 please.'
	start_year = gets.chomp.to_i
end

puts 'End year?'
end_year = gets.chomp.to_i
while end_year < start_year
	puts 'Enter a year greater than the start year please.'
	end_year = gets.chomp.to_i
end

while start_year <= end_year
	if start_year % 4 == 0
		if start_year % 100 != 0 || start_year % 400 == 0
			puts start_year.to_s
		end
	end
	start_year += 1
end


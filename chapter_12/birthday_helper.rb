# Reads a list of names and birthdays, asks for a name and returns 
# next birthday and how old they will be.

puts 'Enter file name:'
filename = gets.chomp
filename = '/Users/<username>/desktop/' + filename
birthday_hash = {}

File.readlines(filename).each do |line|
	birthday_hash[line[0..line.index(',')-1]] = line[line.index(',')+2..-1].chomp
end

puts "Who's birthday do you want to know?"
response = gets.chomp
puts birthday_hash[response]

date_array = []
birthday_hash.values.each do |date|
	year = date[-4, 4].to_i
	month = date[0, 2].to_i							
	day = date[3, 2].to_i
	birthday_hash[birthday_hash.key(date)] = Time.local(year, month, day)
	date_array.push(Time.local(year, month, day))
end

cur_time = Time.new
next_birthday_date = date_array[0]
date_array.each do |date|
	if (cur_time - next_birthday_date) > (cur_time - date)
		next_birthday_date = date
	end
end

next_birthday_name = birthday_hash.key(next_birthday_date)

puts
puts "By the way, the next birthday is:"
puts "#{next_birthday_name}: #{next_birthday_date}"

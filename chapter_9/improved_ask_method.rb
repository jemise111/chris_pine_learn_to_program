# Improve the ask method from the chapter

def ask question
	while true
		puts question
		reply = gets.chomp.downcase

		if (reply == 'yes' || reply == 'no')
			if reply == 'yes'
				return true
			else
				return false
			end
			break
		else
			puts 'Please answer "yes" or "no".'
		end
	end
end

puts 'Hello, and thank you for...'
puts

ask 'Do you like tacos?'
ask 'Burritos?'
wets_bed = ask 'Do you wet the bed?'
ask 'Do you like chimichangas?'
ask 'Sopapillas?'
puts 'Just...'
puts '...Debriefing...thank you...'
puts
puts wets_bed
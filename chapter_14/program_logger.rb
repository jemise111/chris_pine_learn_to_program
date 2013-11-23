# Method logs what block it is executing and what is returned

puts 'pick a number:'
number = gets.chomp.to_i

def log block_description, &block
	puts "Beginning \"#{block_description}\"..."
	result = block.call
	puts "...\"#{block_description}\" finished, returning:"
	puts result
end

log 'outer block' do
	log 'double' do
		number * 2
	end
	log 'triple' do
		number * 3
	end
	false
end
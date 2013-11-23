# Adds a switch to turn profiling on and off using example in Chapter 14

def profile block_description, &block
	profiling = true #this is our switch, change to false to turn off profiling
	if profiling
		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
	else
		block.call
	end
end

profile '25000 doublings' do
	number = 1
	25000.times do
		number = number + number
	end
	puts "#{number.to_s.length} digits"
end

profile 'count to a million' do
	number = 0
	1000000.times do
		number = number + 1
	end
	puts 'Counted to a million'
end


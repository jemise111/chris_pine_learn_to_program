# program_logger method but with one space indentation for each layer of
# nesting

$nest_level = 0

puts 'pick a number:'
number = gets.chomp.to_i

def log block_description, &block
	nest_indent = '    ' * $nest_level 
	puts "#{nest_indent}Beginning \"#{block_description}\"..."
	$nest_level += 1
	result = block.call
	$nest_level -= 1
	print "#{nest_indent}...\"#{block_description}\" finished, returning: "
	puts result.to_s
end

log 'outer block' do
	log 'first inner one' do
		log 'double' do
			number * 2
		end
		true
	end
	log 'first inner two' do
		log 'second inner' do
			log 'triple' do
				number * 3
			end
			true
		end
		true
	end
	false
end
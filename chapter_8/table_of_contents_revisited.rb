# Mock table of contents to practice text alignment and arrays

line_width = 60

chapters = []
chapters.push ['Getting Started', 1]
chapters.push ['Numbers', 9]
chapters.push ['Letters', 13]

puts 'Table of Contents'.center(line_width)
puts
i = 1
chapters.each do |chapter|
	puts ('Chapter ' + i.to_s + ':  ' + chapter[0]).ljust(line_width/2) + 
	('page ' + chapter[1].to_s).rjust(line_width/2)
	i += 1
end 
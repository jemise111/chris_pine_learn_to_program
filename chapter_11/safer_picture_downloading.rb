# Adapts the picture-downloading program to ensure a file is 
# never overwritten

#replace <username> to desired user name
Dir.chdir '/Users/<username>/Desktop/Photos:Videos'

# Replace <DriveName> with name of drive used to download pictues
pic_names = Dir['/Volumes/<DriveName>/*.{JPG, jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files:  "

pic_number_counter = 1
unmoveables = []

pic_names.each do |name|
	print '.' #progress bar

	new_name = 
	if pic_number_counter < 10
		"#{batch_name}0#{pic_number_counter}.jpg"
	else
		"#{batch_name}#{pic_number_counter}.jpg"
	end

# If file name exists skip copying the file and add it to an 
# array of unmoveable files
	if File.exist?(new_name)
		unmoveables.push(new_name)
	else
		File.rename name, new_name
	end
	pic_number_counter += 1
end

puts
puts 'Done'

if !unmoveables.empty?
	puts 'The following files could not be moved:'
	puts unmoveables
end
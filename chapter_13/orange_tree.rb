# Creates orange tree class

class OrangeTree

	def initialize
		@height = 0 #in feet
		@age = 0 #in years
		@orange_count = 0
	end

	def one_year_passes
		@age += 1
		@height += 10
		@orange_count = 0
		if @age >= 2
			@orange_count += @age * 5
		end
		if is_dead?
			puts 'Sorry. Your Orange Tree has died. You can always plant another one!'
			exit
		end
	end

	def get_height
		puts "The Orange Tree is #{@height} ft. tall"
	end

	def count_the_oranges
		puts "The Orange Tree has #{@orange_count} oranges remaining"
	end

	def pick_an_orange
		if oranges_left?
			puts 'mmm that looks good'
			@orange_count -= 1
		else
			puts 'There are no oranges right now. Give your tree some time to grow'
		end
	end

	private

	def is_dead?
		@age > 10
	end

	def oranges_left?
		@orange_count > 0
	end

end

myOrange = OrangeTree.new
myOrange.get_height
myOrange.count_the_oranges
myOrange.one_year_passes
myOrange.get_height
myOrange.count_the_oranges
myOrange.one_year_passes
myOrange.pick_an_orange 
myOrange.get_height
myOrange.count_the_oranges
myOrange.one_year_passes
myOrange.get_height
myOrange.count_the_oranges
myOrange.one_year_passes
myOrange.get_height
myOrange.pick_an_orange
myOrange.pick_an_orange
myOrange.pick_an_orange
myOrange.count_the_oranges
myOrange.one_year_passes
myOrange.get_height
myOrange.count_the_oranges
myOrange.one_year_passes
myOrange.one_year_passes
myOrange.one_year_passes
myOrange.one_year_passes
myOrange.one_year_passes
myOrange.one_year_passes
myOrange.one_year_passes
myOrange.one_year_passes
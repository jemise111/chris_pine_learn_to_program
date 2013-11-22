# Creates interactive game based on baby_dragon class from Text

class Dragon

	def initialize name
		@name = name
		@asleep = false
		@stuff_in_belly = 10 
		@stuff_in_intestine = 0 

		puts "#{@name} is born."
	end

	def feed
		puts "You feed #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end

	def walk
		puts "You walk #{@name}."
		@stuff_in_belly = 10
		passage_of_time
	end

	def put_to_bed
		puts "You put #{@name} to bed."
		@asleep = true
		3.times do
			if @asleep
				passage_of_time
			end
			if @asleep
				puts "#{@name} snores, filling the room with smoke."
			end
		end
		if @asleep
			@asleep = false
			puts "#{@name} wakes up slowly."
		end
	end

	def toss
		puts "You toss #{@name} up into the air."
		puts 'He giggles, which singes your eyebrows.'
		passage_of_time
	end

	def rock
		puts "You rock #{@name} gently."
		@asleep = true
		puts 'He briefly dozes off...'
		passage_of_time
		if @asleep
			@asleep = false
			puts '...but wakes when you stop.'
		end
	end

	private

	def hungry?
		@stuff_in_belly <= 2
	end

	def poopy?
		@stuff_in_intestine >= 8
	end

	def passage_of_time
		if @stuff_in_belly > 0
			@stuff_in_belly -= 1
			@stuff_in_intestine += 2
		else
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly'
			end
			puts "#{@name} is starving! In desperation, he ate YOU!"
			exit
		end

		if @stuff_in_intestine >= 10
			@stuff_in_intestine = 0
			puts "Whoops! #{@name} had an accident..."
		end

		if hungry?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly'
			end
			puts "#{@name}'s stomch grumbles..."
		end

		if poopy?
			if @asleep
				@asleep = false
				puts 'He wakes up suddenly'
			end
			puts "#{@name} does the potty dance..."
		end
	end

end

# Game interactions

puts 'Welcome to the baby dragon game.'
puts 'To create a new baby dragon enter the dragon\'s name and press enter'
puts 'To exit at any time type "exit"'

name = gets.chomp
exit if name.downcase == 'exit'
dragon = Dragon.new(name)

while true
	puts
	puts 'Choose one of the following options:'
	puts '  feed'
	puts '  walk'
	puts '  toss'
	puts '  rock'
	puts '  put to bed'
	print 'Selection? '
	selection = gets.chomp.strip.downcase.to_s
	puts
	case selection
	when 'feed'
		dragon.feed
	when 'walk'
		dragon.walk
	when 'toss'
		dragon.toss
	when 'rock'
		dragon.rock
	when 'put to bed'
		dragon.put_to_bed
	when 'exit'
		exit
	else
		puts 'That isn\'t something you can do. Try again'
	end
end
# Extends shuffle program from chapter 10 to all arrays

class Array
	def myshuffle
		self.recursive_shuffle []
	end

	def recursive_shuffle return_array 
		shuffled_index = rand(self.length)
		return_array.push(self[shuffled_index])
		self.delete_at(shuffled_index)

		if self.length > 0 #recursive step
			self.recursive_shuffle(return_array)
		end

		return_array
	end
end

testarray = ['jon', 'jacob', 'me', 5]
puts testarray.myshuffle
# Method that executes a block once for each hour passed today

def grandfather_clock block_description, &block
	n_times = Time.new.hour
	n_times.times do
		block.call
	end 
end

grandfather_clock 'say dong' do
	puts 'DONG!'
end

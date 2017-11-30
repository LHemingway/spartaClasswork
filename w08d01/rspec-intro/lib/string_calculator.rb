class StringCalculator
	
	def self.add(string)
		if string.empty?
			0
		else
			array = string.split(',')
			array.map! { |n| n.to_i }
			array.reduce(:+)
		end
	end



end
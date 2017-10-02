class Square < Quadrilateral
	attr_accessor :side_length

	def initialize(side_length)
		self.side_length = side_length
	end

	def calculate_area
  	self.side_length ** 2
	end

	def calculate_perimeter
  	self.side_length * 4
	end

	def scaled_area
		(self.side_length *= 10) ** 2
	end

	def scaled_perimeter
  	(self.side_length *= 10) * 4
	end

	def describe_scale
		puts "Scaled by 10: Area: #{self.scaled_area} Perimeter: #{self.scaled_perimeter}"
	end

end
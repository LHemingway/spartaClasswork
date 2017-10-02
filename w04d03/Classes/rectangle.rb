class Rectangle < Quadrilateral
	attr_accessor :length, :width

	def initialize(length, width)
		self.length = length
		self.width = width
	end

	def calculate_area
  	self.length * self.width
	end

	def calculate_perimeter
  	(self.length + self.width) * 2
	end

end
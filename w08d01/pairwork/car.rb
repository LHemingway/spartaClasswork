class Car

	include debug

	def initialize(color, acceleration, seats)
			@color = color
			@acceleration = acceleration
			@seats = seats
		end

	def drive
		puts 'drive'
	end

	def refuel
		puts 'refuel'
	end

	def break_into
		puts 'break_into'
	end

end


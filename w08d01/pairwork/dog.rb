class Dog

	include debug

	def initialize(fluffiness, name, ageindogyears)
			@fluffiness = fluffiness
			@name = name
			@ageindogyears = ageindogyears
		end

	def cuddle
		puts 'cudde'
	end

	def walk
		puts 'walk'
	end

	def escape
		puts 'escape'
	end

end


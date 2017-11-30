# This is the Mammals module that should be included for all mammals
module Mammals
	def common_mammal_traits
		puts 'Mammals are warm-blooded and have nips'
	end

	class Common

		def feed_young
			puts 'Feeding the baby'
		end

	end

	class Biped < Common
		attr_accessor :number_of_legs

		def initialize(number_of_legs)
			self.number_of_legs = number_of_legs
		end
		
		def legs
			puts "I have #{self.number_of_legs} legs"
		end
	
	end

	class Quadruped < Common
		attr_accessor :number_of_legs

		def initialize(number_of_legs)
			self.number_of_legs = number_of_legs
		end

		def legs
			puts "I have #{self.number_of_legs} legs"
		end
		
	end

end

# Mammals.common_mammal_traits

# donkey = Mammals::Quadruped.new(4)
# donkey.feed_young
# donkey.legs
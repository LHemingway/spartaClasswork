# This is our Animal class which will inherit from living organism
require_relative './living_organism'

class Animal < LivingOrganism

	def self.traits
		puts 'Animals can eat, sleep, drink, speak and procreate'
	end

	def eat
		puts 'Eat'
	end

	def sleep
		puts 'Sleep'
	end

	def drink
		puts 'Drink'
	end

	def speak
		puts 'Speak'
	end

	def procreate
		puts 'Shag'
	end

end

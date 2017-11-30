module Debug

	def list_methods(thing)
		thing.methods - Object.methods
	end

	def list_attributes(thing)
		thing.instance_variables
	end

	def count_methods(thing)
		method = thing.methods - Object.methods
		method.count
	end

	def count_attributes(thing)
		thing.instance_variables.count
	end

end
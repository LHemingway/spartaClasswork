# The simple loops
# loop do
# 	puts "I want to break free"
# end

# While loops
i = 0
while i < 10
	puts "While: #{i}"
	i += 1
end

j = 0
until j > 10
	puts "Until: #{j}"
	j += 1
end

# For Loop // Range
for k in 0..5
	puts "For Loop: #{k}"
end

# Times
5.times do
	puts "OMG"
end

# Each
names = ["abass", "asalmon", "atrout"]
names.each do |name|
	puts name
end

# Array enumerators
# Map
words = ["Luke", "Anakin", "Leia", "Han", "Chewy"]
words.map! do |word|
	word.reverse
end
puts words

# Reduce / Inject
some_numbers = [1,55,3,63,32,63,2,3,52]
# puts some_numbers.reduce(:+)
sum = some_numbers.reduce do |total, number|
	total + number
end
puts sum

# Select
students = ["Liam", "Luke", "Abass", "James", "Charlotte"]

cool_students = students.select do |student|
	student.chars.first === "L"
end
puts cool_students
require "nokogiri"

doc = Nokogiri::XML(open('./xml_menu.xml'))

# puts doc.search('price')

# doc.search('food').each do |food|
#   p food.element_children(1.name)
# end

puts doc.xpath('//food')
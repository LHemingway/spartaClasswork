def deck_o_cards
	deck = []
	4.times do
		#deck += ["A", 2, 3, 4, 5, 6, 7, 8, 9, 10, "J", "Q", "K"]
		deck += [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10, 10]
	end	
	deck.shuffle!
	deck
end

def deal_card(hand, deck)
	hand.push(deck.pop) 
end

player_hand = []
dealer_hand = []
deck = deck_o_cards

i = 0
while i < 2
	deal_card(player_hand, deck)
	deal_card(dealer_hand, deck)
	i += 1
end


# def check_value (player_hand, dealer_hand)

# 	if ((player_hand || dealer_hand).include? "A")
# 		11
# 	elsif ((player_hand || dealer_hand).include? "J" || "Q" || "K")
# 		10
# 	end
	
# end

#check_value(player_hand, dealer_hand)

# def hit (player_hand)
# 	puts player_hand
# 	print "Stick of Hit? "
#   choice = gets.chomp.downcase
#   if choice == "hit"
#   	deal_card
#   	puts player_hand
#   end
# end

# hit(player_hand)
def compare_score (player_hand, dealer_hand)
	puts player_score = player_hand.reduce(:+)
	puts dealer_score = dealer_hand.reduce(:+)

	if (player_score > dealer_score) 
		puts "player wins"
	elsif (dealer_score > player_score)
		puts "dealer wins"
	else 
		puts "draw"
	end
end

compare_score(player_hand, dealer_hand)


		


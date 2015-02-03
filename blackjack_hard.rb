require 'pry'
require_relative "./blackjack.rb"

deck = Deck.new


player_hand = Hand.new
dealer_hand = Hand.new

player_hand.add(deck.draw)
player_hand.add(deck.draw)

dealer_hand.add(deck.draw)
dealer_hand.add(deck.draw)

binding.pry
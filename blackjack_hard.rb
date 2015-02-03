require 'pry'
require_relative "./blackjack.rb"

deck = Deck.new

player1_hand = Hand.new
player2_hand = Hand.new

player1_hand.add(deck.draw)
player1_hand.add(deck.draw)

player2_hand.add(deck.draw)
player2_hand.add(deck.draw)

def busted_check score
  score.busted?
end
def blackjack_check score
  score.blackjack?
end

puts "\n\nWelcome to Blackjack!\n\n"
puts "Player 1, you've drawn #{player1_hand.to_s}. 
Your current score is #{player1_hand.value}."
loop do
puts "Would you like another card?"
  if gets.chomp == "y"
    player1_hand.add(deck.draw)
    puts "You now have #{player1_hand.to_s},
and your current score is #{player1_hand.value}."
    if player1_hand.busted?
      puts "Sorry! You busted!"
      break
    elsif player1_hand.blackjack?
      puts "Congrats! You hit blackjack!"
      break
    end
  else
    break
  end
end


require 'pry'

class Card

  def initialize value, suit
    @value = value
    @suit = suit
  end

  def value
    if @value == :K || @value == :Q || @value == :J
      @value = 10
    end
    if @value == :A
      @value = 11
    end
    @value
  end

  def suit
    @suit
  end

end

class Deck

  def initialize 
    @cards = Array.new(52){|x| x+=1}
    @drawn_cards = []
  end

  def cards
    @cards
  end

  def draw
    x = @cards.pop
    @drawn_cards << x
    x
  end 

  def drawn
    @drawn_cards
  end

end

class Hand

def initialize
  @hand_value = 0
end

def add *cards
  cards.each do |card|
    @hand_value += card.value
  end
  @hand_value
end

def value
  @hand_value
end

def busted?
  if @hand_value > 21
    true
  end
end

def blackjack?
  if @hand_value == 21
    true
  end
end


end
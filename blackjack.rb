require 'pry'

class Card

  def initialize value, suit
    @value = value
    @suit = suit
  end

  def value
    if @value == :K || @value == :Q || @value == :J
      @value = 10
    elsif @value == :A
      @value = 1
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
  bindi
end

def value
  @hand_value
end


end

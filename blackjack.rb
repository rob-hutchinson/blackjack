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
  @value = 0
end

def add card, card2
  @value = card.value + card2.value
  binding.pry
end

def value
  @value
end


end

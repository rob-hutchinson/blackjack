require 'pry'

class Card

  def initialize value, suit
    @value = value
    @suit = suit
    @rank = value
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

  def rank
    @rank
  end

end

class Deck

  def initialize 
    cards = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]
    suits = [:D, :S, :C, :H]
    @cards = []

    suits.each do |x|
      cards.size.times do |y|
        @cards << Card.new(cards[y], x)
      end
    end
    
    @cards.shuffle!
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
  @hand_cards = []
  @string_variable = []
  @string = ""
end

def add *cards
  cards.each do |card|
    @string_variable << "#{card.rank}" + "#{card.suit}"
    @hand_value += card.value
    @hand_cards.push card.value
    if @hand_value > 21 && @hand_cards.include?(11)
      @hand_value -= 10
      @hand_cards.delete(11)
      @hand_cards << 1
    end
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

def to_s 
  @string_variable.length.times do |x|
    @string += "#{@string_variable[x]}" + ", "  
  end
   @string[0..-3]
end

end
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

  def cards
  end

end

class Hand
end

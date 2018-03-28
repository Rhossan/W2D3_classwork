require_relative 'card'

class Deck

  attr_reader :cards

  def initialize
    @cards = make_deck
  end

  def make_deck
    cards = []
    suits = [:hearts, :spades, :diamonds, :clubs]

    suits.each do |suit|
      (2..10).each do |val|
        cards << Card.new(suit, val)
      end
    end

    suits.each do |suit|
      [:jack, :queen, :king, :ace].each do |face|
        cards << Card.new(suit, face)
      end
    end
    cards
  end

  def shuffle_deck
    cards.shuffle!
  end

  def draw_card(num)
    pass = []

    num.times do
      pass << cards.pop
    end
    pass 
  end
end

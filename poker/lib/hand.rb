require_relative 'deck'

class Hand

  attr_accessor :hand

  def initialize(deck)
    @hand = draw_cards(5)
  end

  def draw_cards(num)
    hand += deck.draw_cards(num)
  end

  def discard_cards(*args)
    args = args.sort
    discards = []
    j = 0

    (0..args.max).each do |i|
      if args[j] == i
        j += 1
        discards << hand.shift
      end
      hand.rotate!
    end
  end

end

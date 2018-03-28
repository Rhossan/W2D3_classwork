require 'card'
require 'deck'
require 'rspec'
require 'byebug'

describe 'Card' do
  let(:card) {Card.new(:hearts,:king)}

  describe "#initialize" do
    it "initialize card with suit and value" do
      expect(card.suit).to eq(:hearts)
      expect(card.value).to eq(:king)
    end
  end
end

describe 'Deck' do
  let(:deck) {Deck.new}

  describe "#initialize" do
    it "initializes a deck object with 52 card objects" do
      expect(deck.cards.length).to eq(52)
    end
  end
end

describe 'Hand' do
  let(:hand) {Hand.new}

  describe "#initialize" do
    it "has 5 card objects in the hand" do
      expect(hand.hand.length).to eq(5)
    end
  end

  describe "#pair" do
    it "checks to see if there is at least one pair" do

    end
end

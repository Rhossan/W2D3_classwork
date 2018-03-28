require 'towers_of_hanoi'
require 'rspec'
require 'byebug'


describe "Towers" do
  subject(:towers) {Towers.new}

  describe "#initialize" do
    it "creates a 2 dimensional array with 3 elements for the discs" do
      expect(towers.board.length).to eq(3)
    end

    it "all discs should be the first tower" do
      expect(towers.board[0]).to eq([3, 2, 1])
    end
  end

  describe "#valid_move?" do
    it "disc at from_tower is smaller than disc at to_tower or to_tower is empty" do
      # debugger
      expect(towers.valid_move?(0, 1)).to eq(true)
    end

    it "tower you want to move to is not the same tower" do
      expect(towers.valid_move?(0, 0)).to raise_error(ArgumentError)
    end

    it "tower you are moving from is not empty" do
      expect(towers.valid_move?(1, 2)).to raise_error(ArgumentError)
    end

    it "raises an error if move is not valid" do
      expect(towers.valid_move?('1','s')).to raise_error(ArgumentError)
    end
  end

  describe "#make_move" do

    it "removes the top disc from a tower" do
      prev_length = towers.board[0].length
      towers.make_move(0, 1)
      expect(towers.board[0].length).not_to eq(prev_length)
    end

    it "moves the disc to another tower" do
      towers.make_move(0, 1)
      expect(towers.board[1].length).to eq(1)
    end
  end

  describe "#win?" do
    it "checks that tower 1 is empty" do

    end

    it "checks to see if another tower is full" do

    end
  end

  describe "#play" do
    it "calls #make_move" do

    end

    it "renders the board after each turn" do

    end

    it "checks to see if you won" do

    end

    it "calls #valid_move?" do
      # expect(towers.valid_move?).to receive(:valid_move?)
    end
  end
end

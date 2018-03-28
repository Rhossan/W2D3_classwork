class Towers

  attr_reader :board

  def initialize
    @board = [[3, 2, 1], [], []]
  end

  def get_move
    moves = gets.chomp.split(',')
  end

  def valid_move?(from_tower,to_tower)
    raise NameError if (from_tower.class != Fixnum && to_tower.class != Fixnum)
    raise ArgumentError if (from_tower == to_tower) || (board[from_tower].empty?)

    if board[to_tower].last != nil
      raise InputError if board[from_tower].last > board[to_tower].last
    end

    true
  end

  def make_move(from_tower, to_tower)
    disc = board[from_tower].pop
    board[to_tower] << disc
  end



  def play
    begin
      puts "make a move in format (0,0)"
      move = get_move
      valid_move?(move[0], move[1])
    rescue => e
      retry
    end
  end
end

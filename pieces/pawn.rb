require_relative 'piece'

class Pawn < Piece

  def symbol
    '♟'.colorize(color)
  end

  def moves
    forward_steps + side_attacks
  end

  private

  def at_start_row?
    pos[0] == (color == :white) ? 6 : 1
  end

  def forward_dir
    color == :white ? -1 : 1
  end


end

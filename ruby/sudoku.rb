class Sudoku
  def initialize(board)
    @board = board
  end

  def solved?
    rows_solved? && columns_solved? && cells_solved?
  end

  def solve!
  end

  private
  def rows_solved?
  end

  def columns_solved?
  end

  def cells_solved?
  end
end

class Node
  attr_accessor :value, :possible_values
  attr_reader :row_id, :column_id, :cell_id

  def initialize(args)
    @value = args[:value].to_i
    @id = args[:location]
    @row_id, @column_id = @id.divmod(9)
    @cell_id = ((@row_id / 3) * 3) + (@column_id / 3)
    @possible_values = (1..9).map(&:to_s)
  end

  def empty?
    @value.zero?
  end
end

class Board
  attr_accessor :puzzle

  def initialize(string)
    @puzzle = []
    string.split('').each_with_index { |value, index| @puzzle << Node.new({ value: value, location: index }) }
  end
end

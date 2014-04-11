class Sudoku

end

class Node
  attr_accessor :value
  attr_reader :row_id, :column_id, :cell_id

  def initialize(args)
    @value = args[:value].to_i
    @id = args[:location]
    @row_id, @column_id = @id.divmod(9)
    @cell_id = ((@row_id / 3) * 3) + (@column_id / 3)
  end

  def solved?
    !@value.zero?
  end
end

class Board
  attr_accessor :puzzle

  def initialize(string)
    @puzzle = []
    string.split('').each_with_index { |value, index| @puzzle << Node.new({ value: value, location: index }) }
    @rows = Board.set_rows
    @columns = Board.set_columns
    @cells = Board.set_cells
  end

  def solved?
    [@rows, @columns, @cells].all? { |block| block.solved? }
  end

  def self.set_rows
  end

  def self.set_cells
  end

  def self.set_columns
  end
end

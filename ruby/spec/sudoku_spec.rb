require 'rspec'
require_relative '../sudoku'

describe Sudoku do

end

describe Node do

end

describe Board do
  let(:test_board) { Board.new('123') } 

  context "attributes" do

    it { test_board.should respond_to(:puzzle ) }
  end
end

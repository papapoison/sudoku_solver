require 'rspec'
require_relative '../sudoku'

describe Sudoku do
  let(:param_board) { Board.new('1'*81) }
  let(:test_game) { Sudoku.new(param_board) }

  context "methods" do
    it { expect(test_game).to respond_to(:solved?) }
    it { expect(test_game).to respond_to(:solve!) }
  end

  context "#solved?" do
  end
end

describe Node do
  let(:test_node) { Node.new({ value: '1', location: 0 }) }

  context "attributes" do
    it { expect(test_node).to respond_to(:value) }
    it { expect(test_node.value).to be_a(Integer) }
    it { expect(test_node).to respond_to(:row_id) }
    it { expect(test_node).to respond_to(:column_id) }
    it { expect(test_node).to respond_to(:cell_id) }
  end

  context "methods" do
    it { expect(test_node).to respond_to(:empty?) }
  end

  context "#empty?" do
    it "should be false if the value is not zero" do
      expect(test_node.empty?).to eq(false)
    end

    it "should be true if the value is zero" do
      test_node.value = 0
      expect(test_node.empty?).to eq(true)
    end
  end

  context "location identifiers" do
    it { expect(test_node.row_id).to eq(0 / 9) }
    it { expect(test_node.column_id).to eq(0 % 9) }
    it { expect(test_node.cell_id).to eq(0) }
  end
end

describe Board do
  let(:test_board) { Board.new('1'*81) }

  context "attributes" do
    it { expect(test_board).to respond_to(:puzzle ) }
    it { expect(test_board.puzzle.length).to eq(81) }
    it { expect(test_board.puzzle).to be_a(Array) }
    it { expect(test_board.puzzle.first).to be_a(Node) }
  end
end

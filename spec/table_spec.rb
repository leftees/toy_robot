require 'spec_helper'
require 'position'
require 'table'

describe Table do

  describe '#position_is_valid?' do

    let(:table) { Table.new(5, 5) }

    it 'returns true when x and y are valid' do
      position = Position.new(2, 3 , 'N')

      expect(table.position_is_valid?(position)).to be true
    end

    it 'returns false when X is invalid' do
      position = Position.new(8, 2, 'N')

      expect(table.position_is_valid?(position)).to be false
    end

    it 'returns false when Y is invalid' do
      position = Position.new(2, 8, 'N')

      expect(table.position_is_valid?(position)).to be false
    end

    it 'returns false when X and Y are invalid' do
      position = Position.new(8, 8, 'N')

      expect(table.position_is_valid?(position)).to be false
    end
  end
end

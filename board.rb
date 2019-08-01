require 'byebug'
require_relative 'tile.rb'

class Board
    attr_reader :grid
    attr_writer :grid

    def self.create_grid
        grid = Array.new(9) { Array.new(9,'*') }
        while grid.flatten.count('b') <= 10
            row = rand(0...9)
            col = rand(0...9)
            grid[row][col] = 'b'
        end
        grid
    end


    def initialize
        @grid = Board.create_grid
    end

    def []=(pos, value)
        x, y = pos[0],pos[1]
        @grid[x][y] = value
    end

    def [](pos)
        x, y = pos[0],pos[1]
        @grid[x][y]
    end

end


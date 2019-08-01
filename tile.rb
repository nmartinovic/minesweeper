require_relative 'board.rb'

class Tile

   def self.from_board(board_object)
        board_object.grid.each do |subarray|
            subarray.each do |ele|
                if ele == 'b'
                    bomb = true
                    ele = Tile.new(bomb)
                else
                    bomb = false
                    ele = Tile.new(bomb)
                end
            end
        end
    end


    def initialize(bomb)
        @revealed = false
        @bomb = bomb
    end

end
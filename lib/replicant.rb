require 'pry'

class Replicant
  attr_accessor :ship_row, :ship_col

  def initialize
    @ship_row = ship_row
    @ship_col = ship_col
    @board = board
  end

  def board
    Array.new(4) { Array.new(4, ".") }
  end

  def print_board(board)
    board.each do |r|
      puts r.map { |p| p }.join(" ")
  end
  print_board(board)

  def random_row(board)
    return rand(4)
  end

  def random_col(board)
    return rand(4)
  end

  @ship_row = random_row(board)
  @ship_col = random_col(board)

    for turn in 1..10
    puts "Turn: #{turn}"
    puts "Guess Row (0-4): "
    guess_row = gets.chomp.to_i
    puts "Guess Collumn (0-4): "
    guess_col = gets.chomp.to_i
      if turn == 10
          puts "------\nGame Over!\nThe Battleship coordinates were:#{ship_row},#{ship_col}"
          break
      elsif (guess_row == ship_row) && (guess_col == ship_col)
          puts "Congratulations! You sunk my battleship!"
          break
      else
          if ((guess_row < 0) || (guess_row > 4)) || ((guess_col < 0) || (guess_col > 4))
              puts "Guess again, that isn't on the board."
          elsif(board[guess_row][guess_col] == "M")
              puts "You guessed that one already."
          else
              puts "You missed my battleship!"
              board[guess_row][guess_col] = "M"
                #if turn == 10
                  #  puts "Game Over\nThe Battleship coordinates were:#{ship_row},#{ship_col}"
                 #   break
                #end
          end
        end
      print_board(board)
    end
  end
end

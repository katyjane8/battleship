require 'pry'
require 'colorize'
require './lib/messages'

class Game
  include Messages

  def run
    puts welcome_message
    cmd = get_user_input
    start_game
  end

  def start_game
    case cmd
      when "p" then begin_game
      when "i" then display_instructions
      when "q" then quit_game
      else warn_invalid_response(cmd)
      end
    end

  def start_game
    clear_screen
    # Ask how hard in the future (Beginner: size = 4 ships = 2)
    make_players
    make_boards(board_options)
    play_game
  end
end

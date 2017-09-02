require 'pry'
require 'colorize'
require './lib/messages'

class Game
  include Messages

  def initialize
    @players = []
  end

  def run
    puts welcome_message
    cmd = get_user_input
    player_options(cmd)
  end

  def player_options(cmd)
    case cmd
    when "p" then begin_game
    when "i" then "here are instructions!"
    when "q" then "bye bye!"
    end
  end

  def begin_game
    clear_screen
    make_players
    make_boards(board_options)
    play_game
  end

  def make_players
    @players << Rick.new("Rick")
    @players << Replicant.new("Replicant")
  end
end

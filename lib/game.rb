require 'pry'
require 'colorize'
require './lib/messages'
require './lib/Replicant'
require './lib/Rick'
require './lib/board'
require './lib/twoship'
require './lib/threeship'

class Game
  include Messages

  def initialize
    @player1 = []
    @player2 = []
  end

  def run
    clear_screen
    puts welcome_message
    cmd = get_user_input
    player_options(cmd)
  end

  def player_options(cmd = '')
    case cmd
      #page 96 about case in POODER
    when "p" then begin_game
    when "i" then puts "here are instructions!"
    when "q" then puts "bye bye!"
    # else warn_invalid_response(cmd)
    end
  end

  def begin_game
    clear_screen
    make_players
    # make_boards
    # play_game
  end

  def make_player1
    @player1 << Rick.new("Rick")
  end

  def make_player2
    @player2 << Replicant.new("Replicant")
  end

end

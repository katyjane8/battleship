require_relative 'messages'
require 'pry'

class Game
  include Messages

  attr_accessor :rick, :replicant

  def intro
    welcome_message
    input = gets.chomp
    case input
    when "p"||"P" then play_battleship
    when "i"||"I" then instructions; intro
    when quit_commands(input) then exit
    end
  end

  def play_battleship
  end

  def display_computer_board
  end


end

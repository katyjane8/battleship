require_relative 'messages'
require 'terminal-table'
require './lib/players'
require 'pry'

class Game
  include Messages

  attr_accessor :computer_board, :human, :computer

  def initialize
    @computer_board = [["A","A1","A2","A3","A4"], ["B","B1","B2","B3","B4"],
                      ["C","C1","C2","C3","C4"], ["D","D1","D2","D3","D4"]]
    @computer = Player.new

  end

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
    start_game
    puts display_computer_board
    @computer.place_ships_computer
  end

  def display_computer_board
    Terminal::Table.new :title => "Computer Board", :headings => [".", "1", "2", "3", "4"], :rows => @computer_board, :style => {:width => 45, :alignment => :center, :border_x => "=", :border_i => "x"}
  end


end

require 'pry'
require 'colorize'
require './lib/messages'

class Game
  include Messages

  def run
    puts welcome_message
    cmd = get_user_input
    open_screen(cmd)
  end
end

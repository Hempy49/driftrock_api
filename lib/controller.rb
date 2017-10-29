require './lib/api.rb'
require './lib/user.rb'

class Controller

  attr_reader :api, :user

  def initialize
    @api = Api.new
    @user = User.new
  end

  # def run(args)
  #   if args[0] == 'find_id'
  #     user.find_id(args[1])
  #   else
  #     puts 'Not valid input'
  #   end
  # end
end

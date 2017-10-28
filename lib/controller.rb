require './lib/api.rb'

class Controller

  attr_reader :api

  def initialize
    @api = Api.new
  end

  def run(args)
    if args[0] == 'get_purchase_data'
      api.get_purchase_data
    elsif args[0] == 'get_user_data'
      api.get_user_data
    else
      puts 'Not valid input'
    end
  end
end

require './lib/api.rb'
require './lib/user.rb'

class Controller

  attr_reader :api, :user, :users_data, :purchases_data

  def initialize(api = Api.new, user = User.new)
    @api = api
    @user = user
  end

  def api_data
    @users_data = api.get_user_data
    @purchases_data = api.get_purchase_data
  end

  def run(args)
    if args[0] == 'total_spend'
      user_total_spend(args[1])
    elsif args[0] == 'average_spend'
      user_average_spend(args[1])
    else
      puts 'Not valid input'
    end
  end

  def user_total_spend(email)
    user_id = user.find_id(email, users_data)
    puts user.total_spend(user_id, purchases_data)
  end

  def user_average_spend(email)
    user_id = user.find_id(email, users_data)
    puts user.average_spend(user_id, purchases_data)
  end
end

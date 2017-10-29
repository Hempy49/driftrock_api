require './lib/api.rb'
require './lib/user.rb'

class Controller

  attr_reader :api, :user

  def initialize(api = Api.new, user = User.new)
    @api = api
    @user = user
  end

  def run(args)
    if args[0] == 'total_spend'
      user_total_spend(args[1])
    else
      puts 'Not valid input'
    end
  end

  def user_total_spend(email)
    users_data = api.get_user_data
    purchases_data = api.get_purchase_data
    user_id = user.find_id(email, users_data)
    puts user.total_spend(user_id, purchases_data)
  end
end

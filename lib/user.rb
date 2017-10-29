require './lib/api.rb'

class User

  attr_reader :api

  def initialize
    @api = Api.new
  end

  def find_id(email, users_data)
     users_data.each do |user|
       return user['id'] if user['email'] == email
     end
   end

   private

   def users_data
     api.get_user_data
   end
end

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

   def total_spend(find_id, purchases_data)
    total = 0
     purchases_data.each do |purchase|
       total += purchase['spend'].to_f if purchase['user_id'] == find_id
     end
     total
   end

   private

   def users_data
     api.get_user_data
   end

   def purchases_data
     api.get_purchase_data
   end
end

require 'httparty'

class Api

  def get_purchase_data
    purchases = 'https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=1000&page=1'
    response = HTTParty.get(purchases)
    response.parsed_response['data']
  end

  def get_user_data
    users = 'https://driftrock-dev-test-2.herokuapp.com/users?per_page=1000&page=1'
    response = HTTParty.get(users)
    response.parsed_response['data']
  end
end

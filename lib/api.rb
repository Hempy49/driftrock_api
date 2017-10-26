require 'httparty'

class Api
  def get_purchase_data
    purchases = 'https://driftrock-dev-test-2.herokuapp.com/purchases?per_page=100&page=1'
    response = HTTParty.get(purchases)
    response.parsed_response
  end
end

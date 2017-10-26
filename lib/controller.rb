require './lib/api.rb'

class Controller

  def initialize
    @api = Api.new
  end 

  def run(args)
    @api.get_purchase_data
  end
end

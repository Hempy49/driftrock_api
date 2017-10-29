require 'spec_helper'

describe Api do
  subject(:api) { described_class.new }

  users_data = [{
    'id' => 'KZHR-1H35-2IH8-JXYN',
    'first_name' => 'Simon',
    'last_name' => 'Hempenstall',
    'phone' => '859-843-5951 x888',
    'email' => 'simon@mail.com'
    }]

    purchases_data = [{
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Synergistic Aluminum Shoes',
      'spend' => '20.78'
      }]

      describe '#get_user_data' do
        it 'gets users data from Api' do
          request = stub_request(:get, "https://driftrock-dev-test-2.herokuapp.com/users?page=1&per_page=1000").
          with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
          to_return(status: 200, body: users_data, headers: {})
          response = request.response.body[0]
          expect(response['id']).to eq 'KZHR-1H35-2IH8-JXYN'
          expect(response['first_name']).to eq 'Simon'
          expect(response['email']).to eq 'simon@mail.com'
        end
      end


      describe '#get_purchase_data' do
        it 'gets purchase data from Api' do
          request = stub_request(:get, "https://driftrock-dev-test-2.herokuapp.com/purchases?page=1&per_page=1000").
          with(headers: {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Ruby'}).
          to_return(status: 200, body: purchases_data, headers: {})
          response = request.response.body[0]
          expect(response['user_id']).to eq 'KZHR-1H35-2IH8-JXYN'
          expect(response['item']).to eq 'Synergistic Aluminum Shoes'
          expect(response['spend']).to eq '20.78'
        end
      end
    end

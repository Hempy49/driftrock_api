require 'spec_helper'

describe Controller do
  subject(:controller) { described_class.new(api, user) }
  let(:api) { double :api }
  let(:user) { double :user }

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
    },
    {
      'user_id' => 'KZHR-1H35-2IH8-JXYN',
      'item' => 'Practical Concrete Pants',
      'spend' => '10.00'
      },
      {
        'user_id' => '97JM-291C-OZK3-ELWN',
        'item' => 'Ergonomic Leather Watch',
        'spend' => '10.00'
        }]

      before do
        allow(api).to receive(:get_user_data).and_return(users_data)
        allow(api).to receive(:get_purchase_data).and_return(purchases_data)
        allow(user).to receive(:find_id).and_return('KZHR-1H35-2IH8-JXYN')
        allow(user).to receive(:total_spend).and_return(30.78)
        allow(user).to receive(:average_spend).and_return(15.39)
        allow(user).to receive(:most_loyal).and_return('KZHR-1H35-2IH8-JXYN')
      end

      describe '#user_total_spend' do
        it 'prints total spend of specified user' do
          expect{ controller.user_total_spend('simon@mail.com') }.to output("30.78\n").to_stdout
        end
      end

      describe '#user_average_spend' do
        it 'prints average spend of specified user' do
          expect{ controller.user_average_spend('simon@mail.com') }.to output("15.39\n").to_stdout
        end
      end

      describe '#most_loyal_user' do
        it 'prints the id of most loyal user' do
          expect{ controller.most_loyal_user }.to output("KZHR-1H35-2IH8-JXYN\n").to_stdout 
        end
      end
    end

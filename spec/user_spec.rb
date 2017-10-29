require 'spec_helper'

describe User do
  subject(:user) { described_class.new }

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
      }]

      describe '#find_id' do
        it 'finds user id from email' do
          expect(user.find_id('simon@mail.com', users_data)).to eq 'KZHR-1H35-2IH8-JXYN'
        end
      end

      describe '#total_spend' do
        it 'calculates the total spend of user id' do
          expect(user.total_spend('KZHR-1H35-2IH8-JXYN', purchases_data)).to eq 30.78
        end
      end
    end

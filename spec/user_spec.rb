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

    it 'finds user id from email' do
      expect(user.find_id('simon@mail.com', users_data)).to eq 'KZHR-1H35-2IH8-JXYN'
    end
  end

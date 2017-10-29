require 'spec_helper'

describe Api do
  subject(:api) { described_class.new }

  describe '#get_purchase_data' do
    it 'gets purchase data from Api' do
      expect(api.get_purchase_data).not_to eq nil
    end
  end

  describe '#get_user_data' do
    it 'gets users data from Api' do
      expect(api.get_user_data).not_to eq nil
    end
  end
end

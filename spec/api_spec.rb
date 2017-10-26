require './lib/api.rb'

describe Api do
  subject(:api) { described_class.new }
  it 'gets purchase data from Api' do
    expect(api.get_purchase_data).not_to eq nil
  end
end

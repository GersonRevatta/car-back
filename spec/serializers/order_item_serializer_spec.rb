# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderItemSerializer do
  let(:item) { create(:item, name: 'Example Item', price: 10.99) }
  let(:order_item) { create(:order_item, item: item) }
  let(:serializer) { described_class.new(order_item) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer).to_json }

  it 'includes the expected attributes' do
    expected_keys = %i[id name price]
    expect(JSON.parse(serialization).keys.map(&:to_sym)).to match_array(expected_keys)
  end
end

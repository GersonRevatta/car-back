# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderSerializer do
  let(:item) { create(:item, name: 'Example Item', price: 10.99) }
  let(:order_item) { create(:order_item, item: item) }
  let(:order) { create(:order, amountTotal: 100.0, order_items: [order_item]) }
  let(:serializer) { described_class.new(order) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer).to_json }

  it 'includes the expected attributes' do
    expected_keys = %i[id amountTotal order_items]
    expect(JSON.parse(serialization).keys.map(&:to_sym)).to match_array(expected_keys)
  end
end

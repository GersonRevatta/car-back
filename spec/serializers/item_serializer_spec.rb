# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe ItemSerializer do
  let(:item) { create(:item) }
  let(:serializer) { described_class.new(item) }
  let(:serialization) { ActiveModelSerializers::Adapter.create(serializer).to_json }

  it 'serializers expect keys' do
    expected_keys = %i[id name price]
    expect(JSON.parse(serialization).keys.map(&:to_sym)).to match_array(expected_keys)
  end
end

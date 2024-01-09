# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe OrderItem do
  it { is_expected.to belong_to(:item).inverse_of(:order_items) }
  it { is_expected.to belong_to(:order).inverse_of(:order_items) }
end

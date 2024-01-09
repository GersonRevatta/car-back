# typed: false
# frozen_string_literal: true

require 'rails_helper'
RSpec.describe Order do
  it { is_expected.to validate_presence_of(:amountTotal) }
  it { is_expected.to have_many(:order_items) }
end

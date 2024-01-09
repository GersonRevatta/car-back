# typed: false
# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Item do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:price) }

  it { is_expected.to have_many(:order_items) }
end

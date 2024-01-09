# typed: false
# frozen_string_literal: true

FactoryBot.define do
  factory :order do
    amountTotal { 100.0 }

    after(:build) do |order|
      order.order_items = build_list(:order_item, 3, order: order)
    end
  end
end

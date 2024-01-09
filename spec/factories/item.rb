# typed: false
# frozen_string_literal: true

FactoryBot.define do
  factory :item do
    sequence(:name) { |n| "Item #{n}" }
    price { 15 }
  end
end

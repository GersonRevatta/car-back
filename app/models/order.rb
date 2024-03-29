# frozen_string_literal: true

class Order < ApplicationRecord
  has_many :order_items, inverse_of: :order, dependent: :destroy

  accepts_nested_attributes_for :order_items

  validates :amountTotal, presence: true
end

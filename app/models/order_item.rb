# frozen_string_literal: true

class OrderItem < ApplicationRecord
  belongs_to :item, inverse_of: :order_items
  belongs_to :order, inverse_of: :order_items
end

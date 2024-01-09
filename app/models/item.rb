# frozen_string_literal: true

class Item < ApplicationRecord
  has_many :order_items, inverse_of: :item

  validates :name, presence: true
  validates :price, presence: true
end

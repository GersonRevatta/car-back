# frozen_string_literal: true

# serialize OrderSerializer
class OrderSerializer < ActiveModel::Serializer
  attributes :id, :amountTotal
  has_many :order_items, if: -> { true }
end

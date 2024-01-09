# frozen_string_literal: true

# serialize OrderItemSerializer
class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price

  def name
    object.item.name
  end

  def price
    object.item.price
  end
end

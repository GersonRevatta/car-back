# frozen_string_literal: true

# serialize ItemSerializer
class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :price
end

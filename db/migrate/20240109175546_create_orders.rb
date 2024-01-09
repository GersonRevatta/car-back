# frozen_string_literal: true

# create table Orders
class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :amountTotal, default: 0

      t.timestamps
    end
  end
end

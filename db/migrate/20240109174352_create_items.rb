# frozen_string_literal: true

# create table Items
class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.integer :price, default: 0

      t.timestamps
    end
  end
end

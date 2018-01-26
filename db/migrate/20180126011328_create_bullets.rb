# frozen_string_literal: true

class CreateBullets < ActiveRecord::Migration[5.1]
  def change
    create_table :bullets do |t|
      t.string :description, null: false
      t.string :tools

      t.timestamps
    end

    add_reference :bullets, :record, index: true
  end
end

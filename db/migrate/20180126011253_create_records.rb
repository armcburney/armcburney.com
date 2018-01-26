# frozen_string_literal: true

class CreateRecords < ActiveRecord::Migration[5.1]
  def change
    create_table :records do |t|
      t.string :title, null: false
      t.string :subtitle, null: false
      t.string :heading, null: false
      t.string :date, null: false
      t.string :image_path, null: false
      t.string :record_type, null: false

      t.timestamps
    end
  end
end

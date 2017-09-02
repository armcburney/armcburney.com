# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[5.1]
  def change
    create_table :articles do |t|
      t.string :title,       null: false
      t.string :description, null: false
      t.text   :text,        null: false

      t.timestamps
    end
  end
end

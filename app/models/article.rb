# frozen_string_literal: true

class Article < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: :slugged

  validates :title, :slug, :description, :text, presence: true

  has_attached_file :image, styles: { large: "1280x", medium: "640x" }
  validates_attachment_content_type :image, content_type: [
    "image/jpg", "image/jpeg", "image/png", "image/gif"
  ]
end

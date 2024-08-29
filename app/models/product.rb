# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :product_colors, dependent: :destroy
  has_many :colors, through: :product_colors

  validates_presence_of :name
  validates :name, length: { minimum: 3, maximum: 5 }
end

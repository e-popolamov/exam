# frozen_string_literal: true

class Color < ApplicationRecord
  has_many :product_colors, dependent: :destroy
  has_many :products, through: :product_colors

  validates_presence_of :name

  COLOR_LIST = [
    { name: :black, value: '#000000' },
    { name: :green, value: '#008000' },
    { name: :silver, value: '#c0c0c0' },
    { name: :white, value: '#ffffff' }
  ].freeze
end

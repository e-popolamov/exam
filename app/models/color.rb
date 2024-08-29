# frozen_string_literal: true

class Color < ApplicationRecord
  has_many :product_colors, dependent: :destroy
  has_many :products, through: :product_colors

  validates_presence_of :name

  def name
    read_attribute(:name).to_sym
  end

  def name=(value)
    write_attribute(:name, value.to_s)
  end

  HEX_VALUES = {
    black: '#000000',
    green: '#008000',
    silver: '#c0c0c0',
    white: '#ffffff'
  }.freeze

  def hex
    HEX_VALUES[name]
  end
end

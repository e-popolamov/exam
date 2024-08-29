# frozen_string_literal: true

class Product < ApplicationRecord
  has_many :product_colors, dependent: :destroy
  has_many :colors, through: :product_colors

  validates :name,
            presence: true,
            length: {
              minimum: 3,
              maximum: 5
            }
  validate :exclude_dog?

  private

  def exclude_dog?
    return true unless name.present? && name.downcase.include?('dog')

    errors.add(:name, "must not include the word 'dog'")
  end
end

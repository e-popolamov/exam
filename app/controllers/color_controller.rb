# frozen_string_literal: true

class ColorController < ApplicationController
  def union_product
    color_ids = params[:color_ids]
    colors = Color.includes(:products).where(id: color_ids)
    common_products = colors.map(&:products).reduce(:&)
    render json: common_products
  end
end

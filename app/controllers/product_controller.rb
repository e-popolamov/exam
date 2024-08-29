# frozen_string_literal: true

class ProductController < ApplicationController
  def index
    products = Product.all
    render json: format_products(products)
  end

  def show
    product = Product.find(params[:id])
    render json: format_product(product)
  end

  def search
    products = Product.find_by(search_params)
    render json: format_products(products)
  end

  def union_colors
    product_ids = params[:product_ids]
    products = Product.includes(:colors).where(id: product_ids)
    common_colors = products.map(&:colors).reduce(:&)
    render json: common_colors.map { |color| { name: color.name, hex: color.hex } }
  end

  private

  def search_params
    params.permit(:name)
  end

  def format_product(product)
    {
      id: product.id,
      name: product.name,
      price: product.price,
      colors: product.colors.map { |color| { name: color.name, hex: color.hex } }
    }
  end

  def format_products(products)
    products.map do |product|
      format_product(product)
    end
  end
end

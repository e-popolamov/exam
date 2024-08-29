# frozen_string_literal: true

class ProductController < ApplicationController
  def index; end

  def show; end

  def search
    # add search by name here
  end

  def union_colors
    # add union colors here
  end

  private

  def search_params
    params.permit(:name)
  end
end

class ProductsController < ApplicationController


  def index
    @product = Product.all
    if params[:start_year].present? and params[:end_year]
      @product = Product.where(year: params[:start_year]..params[:end_year])
    end
  end
end

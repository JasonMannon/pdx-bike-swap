class CategoriesController < ApplicationController
  def index
  	@categories = Category.order('created_at DESC').all
  end

  def show
  	@category = Category.find(params[:id])
  end

end
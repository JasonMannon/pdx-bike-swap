class ComponentsController < ApplicationController
  def index
  	@components = Component.all 
  end

  def new
  	@component = Component.new
  end

  def create
  	@component = Component.new(component_params)
  	if @component.save
  		redirect_to root_url, notice: "Your item has been added"
  	else
  		render "new"
  	end
  end
  
  private
  def component_params
    params.require(:component).permit(:user_id, :category_id, :company, :name, :price, :condition, :description)
  end
end
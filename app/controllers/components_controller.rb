class ComponentsController < ApplicationController
  def index
  	
    @component = Component.find_by(params[:id])
    if params[:search]
      @components = Component.search(params[:search]).order("created_at DESC")
    else
      @components = Component.all.order('created_at DESC')
  end

  end

  def new
  	@component = Component.new
  end

  def show
    @component = Component.find(params[:id])
    
  end

  def create
  	@component = Component.new(component_params)
  	if @component.save
  		redirect_to root_url, notice: "Your item has been added"
  	else
  		render "new"
  	end
  end

  def destroy
    @component = Component.find(params[:id])
    @component.destroy
    redirect_to root_url
  end
  
  private
  def component_params
    params.require(:component).permit(:user_id, :category_id, :company, :name, :price, :condition, :description, :photo)
  end
end
class ComponenetsController < ApplicationController
  def index
  	@components = Component.all 
  end

  def new
  	@component = Componenet.new
  end

  def create
  	@componenet = Componenet.new(componenet_params)
  	if @componenet.save?
  		redirect_to root_url, notice: "Product added"
  	else
  		render "new"
  	end
  end

end
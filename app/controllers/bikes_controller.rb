class BikesController < ApplicationController
  def index
    	@components = bike.all 
    end

    def new
    	@bike = bike.new
    end

    def create
    	@bike = bike.new(bike_params)
    	if @bike.save
    		redirect_to root_url, notice: "Your item has been added"
    	else
    		render "new"
    	end
    end
    
    private
    def bike_params
      params.require(:bike).permit(:bike)
    end
  end
end
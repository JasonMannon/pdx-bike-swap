class IndexController < ApplicationController

	def index
		@compenents = Component.all 
	end

end



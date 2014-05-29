class IndexController < ApplicationController

	def index
		@components = Component.order('created_at DESC').limit(4).all
	end

end



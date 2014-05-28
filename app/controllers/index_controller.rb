class IndexController < ApplicationController

	def index
		@components = Component.order('created_at DESC').limit(8).all
	end

end



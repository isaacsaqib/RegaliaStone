class WelcomeController < ApplicationController
	def index
		@quarts = Quart.all

	end


end

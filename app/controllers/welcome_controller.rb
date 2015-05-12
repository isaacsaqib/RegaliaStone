class WelcomeController < ApplicationController
	def index
		@quarts = Quart.all
		@granites = Granite.all
	end


end

class WelcomeController < ApplicationController
	def index
		@quarts = Quart.all
		@granites = Granite.all
		@reviews = Review.all
	end


end

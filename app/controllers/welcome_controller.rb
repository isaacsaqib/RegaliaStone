class WelcomeController < ApplicationController
	def index
		@quarts = Quart.all
		@quarts_two = @quarts.to_a
	end


end

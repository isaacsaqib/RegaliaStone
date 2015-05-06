class WelcomeController < ApplicationController
	def index
		@quarts = Quart.all
		@quarts_two = @quarts.to_a[5..12]
		@granites = Granite.all
	end


end

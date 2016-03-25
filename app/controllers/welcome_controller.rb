class WelcomeController < ApplicationController
	def index
		@quarts = Quart.all

	@quarts_tuscanys = Quart.where(:collection => "Tuscany")
	@quarts_galaxys = Quart.where(:collection => "Galaxy")
	@quarts_luminous = Quart.where(:collection => "Luminous")
	@quarts_marmoreals = Quart.where(:collection => "Marmoreal")

		@granites = Granite.all
		@reviews = Review.all
	end


end

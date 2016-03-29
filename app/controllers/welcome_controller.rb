class WelcomeController < ApplicationController
	def index
		@quarts = Quart.all

	@quarts_tuscanys = Quart.where(:collection => "Tuscany")
	@quarts_galaxys = Quart.where(:collection => "Galaxy")
	@quarts_soft = Quart.where(:collection => "Soft")
	@quarts_marmoreals = Quart.where(:collection => "Marmoreal")
	@tiles_duno = Tile.where(:collection => "Duno Sands")


		@granites = Granite.all
		@reviews = Review.all
	end

	def specs
	end
	


end

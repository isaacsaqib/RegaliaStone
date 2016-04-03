class WelcomeController < ApplicationController
	def index
		@quarts = Quart.all

	@quarts_tuscanys = Quart.where(:collection => "Tuscany")
	@quarts_galaxys = Quart.where(:collection => "Galaxy")
	@quarts_soft = Quart.where(:collection => "Soft")
	@quarts_marmoreals = Quart.where(:collection => "Marmoreal")
	@tiles_duno = Tile.where(:collection => "Duno Sands")
	@tiles_venetian = Tile.where(:collection => "Venetian")


		@granites = Granite.all
		@reviews = Review.all
	end

	def specs
	end

	def warranty

		@quarts = Quart.all
	end
	
	


end

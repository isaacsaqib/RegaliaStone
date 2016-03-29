class TilesController < ApplicationController
	def index
	@tiles = Tile.all	

	
	end


	def new
		@tile = Tile.new
	end

	def create
	@tile = Tile.new(tile_params)
		if @tile.save
			redirect_to "/"
		else
			render :new 
		end

	end

	def show
		@tile = Tile.find(params[:id])
	end


	def edit
		@tile = Tile.find(params[:id])
	end

	def update
		@tile = Tile.find(params[:id])

			if @tile.update(tile_params)
				redirect_to "/"
			else
				render 'edit'
			end
	end

	def destroy
		@tile = Tile.find(params[:id])
		@tile.destroy
	end


	private

	def tile_params
		params.require(:tile).permit(:name, :description, :collection, :type, :avatar, :subsection)

	end



end

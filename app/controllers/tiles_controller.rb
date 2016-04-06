class TilesController < ApplicationController
	def index
	@tiles = Tile.all	

	
	end


	def new
		@tile = Tile.new
	end

	def create
	@tile = Tile.new(tile_params)
		respond_to do |format|
			if @tile.save
				if params[:images]
					params[:images].each {|image|
						@tile.pictures.create(image: image)
					}

				end

		format.html { redirect_to @tile, notice: 'tile was successfully created.' }
      format.json { render json: @tile, status: :created, location: @tile }
    else
      format.html { render action: "new" }
      format.json { render json: @tile.errors, status: :unprocessable_entity }
    end
  end

	end

	def show
		@tile = Tile.find(params[:id])

    	@pictures_tile = @tile.pictures
	end


	def edit
		@tile = Tile.find(params[:id])
	end

	def update
		@tile = Tile.find(params[:id])

	    respond_to do |format|
	      if @tile.update_attributes(tile_params)
	        if params[:images]
	          # The magic is here ;)
	          params[:images].each { |image|
	            @tile.pictures.create(image: image)
	          }
	        end
	        format.html { redirect_to @tile, notice: 'tile was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: "edit" }
	        format.json { render json: @tile.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
		@tile = Tile.find(params[:id])
		@tile.destroy
	end


	private

	def tile_params
		params.require(:tile).permit(:name, :description, :images, :pictures, :collection, :type, :subsection, :size, :finish)

	end



end

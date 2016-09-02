class MosaicsController < ApplicationController
	def index
	@mosaics = Mosaic.all	

	
	end


	def new
		@mosaic = Mosaic.new
	end

	def create
	@mosaic = Mosaic.new(mosaic_params)
		respond_to do |format|
			if @mosaic.save
				if params[:images]
					params[:images].each {|image|
						@mosaic.pictures.create(image: image)
					}

				end

		format.html { redirect_to @mosaic, notice: 'mosaic was successfully created.' }
      format.json { render json: @mosaic, status: :created, location: @mosaic }
    else
      format.html { render action: "new" }
      format.json { render json: @mosaic.errors, status: :unprocessable_entity }
    end
  end



	end

	def show
		@mosaic = Mosaic.find(params[:id])
		@pictures_mosaic = @mosaic.pictures
	end


	def edit
		@mosaic = Mosaic.find(params[:id])
	end

	def update
		@mosaic = Mosaic.find(params[:id])

	    respond_to do |format|
	      if @mosaic.update_attributes(mosaic_params)
	        if params[:images]
	          # The magic is here ;)
	          params[:images].each { |image|
	            @mosaic.pictures.create(image: image)
	          }
	        end
	        format.html { redirect_to @mosaic, notice: 'mosaic was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: "edit" }
	        format.json { render json: @mosaic.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
		@mosaic = Mosaic.find(params[:id])
		@mosaic.destroy
	end




	private

	def mosaic_params
		params.require(:mosaic).permit(:name, :description, :images, :pictures, :collection, :size, :finish, :subsection, :material, :soldby)

	end



end

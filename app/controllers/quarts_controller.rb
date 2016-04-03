class QuartsController < ApplicationController
	def index
	@quarts = Quart.all	

	
	end


	def new
		@quart = Quart.new
	end

	def create
	@quart = Quart.new(quart_params)
		respond_to do |format|
			if @quart.save
				if params[:images]
					params[:images].each {|image|
						@quart.pictures.create(image: image)
					}

				end

		format.html { redirect_to @quart, notice: 'quart was successfully created.' }
      format.json { render json: @quart, status: :created, location: @quart }
    else
      format.html { render action: "new" }
      format.json { render json: @quart.errors, status: :unprocessable_entity }
    end
  end



	end

	def show
		@quart = Quart.find(params[:id])
		@pictures_quart = @quart.pictures
	end


	def edit
		@quart = Quart.find(params[:id])
	end

	def update
		@quart = Quart.find(params[:id])

	    respond_to do |format|
	      if @quart.update_attributes(quart_params)
	        if params[:images]
	          # The magic is here ;)
	          params[:images].each { |image|
	            @quart.pictures.create(image: image)
	          }
	        end
	        format.html { redirect_to @quart, notice: 'quart was successfully updated.' }
	        format.json { head :no_content }
	      else
	        format.html { render action: "edit" }
	        format.json { render json: @quart.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
		@quart = Quart.find(params[:id])
		@quart.destroy
	end




	private

	def quart_params
		params.require(:quart).permit(:name, :description, :images, :pictures, :alt, :sort_by_color, :collection)

	end



end

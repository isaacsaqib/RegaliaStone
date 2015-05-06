class GranitesController < ApplicationController
	def index
	@granites = Granite.all	
	
	end


	def new
		@granite = Granite.new
	end

	def create
		@granite = Granite.new(granite_params)
		if @granite.save
			redirect_to "/granites/new"
		else
			render :new 
		end

	end

	def edit
		@granite = Granite.find(params[:id])
	end

	def update
		@granite = Granite.find(params[:id])

			if @granite.update(granite_params)
				redirect_to "/"
			else
				render 'edit'
			end
	end



	private

	def granite_params
		params.require(:granite).permit(:name, :description, :avatar)

	end


end

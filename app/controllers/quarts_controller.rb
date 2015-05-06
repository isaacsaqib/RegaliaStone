class QuartsController < ApplicationController
	def index
	@quarts = Quart.all	
	
	end


	def new
		@quart = Quart.new
	end

	def create
	@quart = Quart.new(quart_params)
		if @quart.save
			redirect_to "/quarts/new"
		else
			render :new 
		end

	end

	def edit
		@quart = Quart.find(params[:id])
	end

	def update
		@quart = Quart.find(params[:id])

			if @quart.update(quart_params)
				redirect_to "/"
			else
				render 'edit'
			end
	end



	private

	def quart_params
		params.require(:quart).permit(:name, :description, :avatar)

	end



end

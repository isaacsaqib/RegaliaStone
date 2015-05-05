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
			redirect_to "/"
		else
			render :new 
		end

	end

	private

	def quart_params
		params.require(:quart).permit(:name, :description, :avatar)

	end



end

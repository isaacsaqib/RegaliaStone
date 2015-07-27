class ReviewsController < ApplicationController
	def index
		@reviews = Review.all 
	end

	def new
		@review = Review.new 
	end

	def create
		@review = Review.create(review_params)
		if @review.save
			redirect_to('/')
		else
			render :new
		end
		
	end

	def edit
		@review = Review.find_by(params[:id])
	end

	def update
		@review = Review.find_by(params[:id])
		@review.update
	end

	def destroy
		@review = Review.find_by(params[:id])
		@review.destroy
	end


	private

	def review_params
		params.require(:review).permit(:name, :date, :descriptionp)
	end

end

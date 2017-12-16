class MoviesController < ApplicationController

  def index
  end
    
	def new
		@movie = Movie.new
  end

	def create
		@movie = Movie.new(book_params)
	end
	
	private
	
		def book_params
			params.require(:movie).permit(:title, :discription, :director)
		end

end

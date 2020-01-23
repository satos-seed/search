class Stores::GenresController < ApplicationController
	#before_action :authenticate_user

	def index
		@genre = Genre.new
		@genres = Genre.all
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
		@genre = Genre.find(params[:id])
		if @genre.update(genre_params)
			redirect_to stores_genres_path
		else
			render :edit
		end
	end

	def destroy
		genre = Genre.find(params[:id])
        genre.destroy
    	redirect_to stores_genres_path
	end

	def create
		@genre = Genre.new(genre_params)
		if @genre.save
			redirect_to stores_genres_path
		else
			render :index
		end	
	end

	private

	def genre_params
		params.require(:genre).permit(:genre_name)
	end

end

class PicturesController < ApplicationController

	def index
		@pictures = Picture.all
	end

	def new
		@picture = Picture.new
	end

	def create
		@picture = Picture.new(picture_params)
		if @picture.save
			redirect_to pictures_path, notice: "Obraz zostal edytowany pomyslnie"
		else
			render "new"
		end
	end

	def edit
		@picture = Picture.find(params[:id])
	end

	def update
		@picture = Picture.find(params[:id])
		if @picture.update(picture_params)
			redirect_to pictures_path, notice: "Obraz zostal edytowany pomyslnie"
		else
			render "edit"
		end
	end

	def destroy
		@picture = Picture.find(params[:id])
		@picture.destroy
		redirect_to pictures_path, notice: "Obraz zostal usuniety"
	end

	private

	def picture_params
		params.require(:picture).permit(:url, :title, :year, :tag)
	end

end

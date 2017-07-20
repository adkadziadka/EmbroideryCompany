class PicturesController < ApplicationController

	def index
		if params[:tag].present?
			@pictures = Picture.where(tag: params[:tag])
		else
			@pictures = Picture.all
		end
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
		redirect_to pictures_path, alert: "Czy aby napewno?"
	end

	private

	def picture_params
		params.require(:picture).permit(:url, :title, :year, :tag)
	end

end

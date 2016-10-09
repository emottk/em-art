class ImagesController < ApplicationController
  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
  end

  def create
    @image = Image.new(article_params)

    @image.save
    redirect_to @image
  end

private
  def article_params
    params.require(:image).permit(:title, :url, :description)
  end

end

class ImagesController < ApplicationController
  def new
  end

  def create
    @image = Image.new(params[:image])

    @image.save
    redirect_to @image
  end

end

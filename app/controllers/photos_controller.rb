class PhotosController < ApplicationController

  def index
    @photos = Photo.all
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def new
    @photo = Photo.new

    @listing = Listing.find(params[:listing_id])
  end

  def create
    @new_photo = Photo.new(photo_params)
    if @new_photo.save
      respond_to do |format|
      format.html { redirect_to "/owners/#{current_owner.id}/listings/#{@new_photo.listing.id}/photos/new" }
      format.js
      end
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:photo, :listing_id)
  end
end

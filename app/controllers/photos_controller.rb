require 'exifr'

class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]

  # GET /photos
  # GET /photos.json
  def index
    @photos = Photo.all
  end

  # GET /photos/1
  # GET /photos/1.json
  def show
  end

  # GET /photos/new
  def new
    @photo = Photo.new
  end

  # GET /photos/1/edit
  def edit
  end

  # POST /photos
  # POST /photos.json
  def create
    @album = Album.find(params[:album_id])
    @photo = Photo.new(photo_params)
    ep = EXIFR::JPEG.new(photo_params[:photo].tempfile)
    # set photography attributes
    @photo.width = ep.width
    @photo.height = ep.height
    @photo.date_time_original = ep.date_time_original
    @photo.exposure_time = ep.exposure_time.to_s
    @photo.f_number = ep.f_number.to_f
    @photo.model = ep.model
    @photo.make = ep.make
    @photo.copyright = ep.copyright
    @photo.iso_speed_ratings = ep.iso_speed_ratings
    @photo.aperture_value = ep.aperture_value
    @photo.max_aperture_value = ep.max_aperture_value
    @photo.focal_length = ep.focal_length
    @photo.album_id = params[:album_id]
    @photo.save


    redirect_to album_path(@album)

    # @photo = Photo.new(photo_params)
    #
    # respond_to do |format|
    #   if @photo.save
    #     format.html { redirect_to @photo, notice: 'Photo was successfully created.' }
    #     format.json { render :show, status: :created, location: @photo }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @photo.errors, status: :unprocessable_entity }
    #   end
    # end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    respond_to do |format|
      if @photo.update(photo_params)
        format.html {redirect_to @photo, notice: 'Photo was successfully updated.'}
        format.json {render :show, status: :ok, location: @photo}
      else
        format.html {render :edit}
        format.json {render json: @photo.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo.destroy
    respond_to do |format|
      format.html {redirect_to album_url(@photo.album), notice: 'Photo was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_photo
    @photo = Photo.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def photo_params
    params.require(:photo).permit(:name, :description, :photo, :path, :date_time_original, :width, :height, :exposure_time, :f_number, :model, :make, :copyright, :iso_speed_ratings, :aperture_value, :max_aperture_value, :focal_length, :album_id)
  end
end

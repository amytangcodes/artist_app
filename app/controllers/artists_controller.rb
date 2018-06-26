class ArtistsController < ApplicationController
  skip_before_action :verify_authenticity_token
  before_action :set_artist, only: [:show, :destroy, :update]
  
  def index
    @artists = Artist.all
    render json: @artists, :except => [:created_at, :updated_at]
  end

  def show
    if @artist
      render json: @artist, :except => [:created_at, :updated_at]
    end
  end

  def create
    @artist = Artist.new(artist_params)
    
    if @artist.save!
      render json: @artist, status: 200, message: "Successfully created an artist."
    end
  end

  def destroy
    @artist.destroy
    render json: { status: 200, message: "Successfully deleted artist." }
  end

  def update
    if @artist.update!(artist_params)
      render json: @artist
    end
  end

  private

  def artist_params
    params.permit(:name)
  end

  def set_artist
    @artist = Artist.find(params[:artist_id])
  end
end
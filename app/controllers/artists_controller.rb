class ArtistsController < ApplicationController
  
  before_action :set_artist, only: [:show, :destroy, :update]
  
  def index
    @artists = Artist.all
    render json: @artists, :except => [:created_at, :updated_at]
  end

  def show
    if @artist
      render json: @artist, :include => {:tours => {:except => [:artists, :created_at, :updated_at]}}, :except => [:created_at, :updated_at]
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
      render json: @artist, status: 200, message: "Successfully updated artist."
    end
  end

  private

    def artist_params
      params.permit(:artist_name, :passport_name, :phone, :email, :website, :address, :genre)
    end

    def set_artist
      @artist = Artist.find(params[:artist_id])
    end
end


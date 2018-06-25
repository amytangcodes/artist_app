class ArtistsController < ApplicationController
  
  def index
    @artists = Artist.all
    render json: @artists
  end

  def show
    @artist = Artist.find(params[:artist_id])

    if @artist
      render json: @artist
    else
      render index
      # render json: {status: "error", code: 404, message: "This artist ID does not exist"}
    end
    # redirect_to "http://google.com"
    # render "index"
    # render json: [{"foo" => "bar"}, {"abc" => 123}]
  end
end
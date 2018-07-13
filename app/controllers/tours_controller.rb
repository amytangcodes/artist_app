class ToursController < ApplicationController
  skip_before_action :verify_authenticity_token
  
  before_action :set_tour, only: [:show, :destroy, :update, :total_artists]
  before_action :set_artists, only: [:total_artists, :create]

  def index
    @tours = Tour.all
    render json: @tours
  end

  def show
    if @tour
      render json: @tour.as_json(include: :artists)
    end
  end

  def create
    @tour = Tour.new(tour_params)
    pp @artists
     
    @tour.artists = @artists
    pp @tour

    if @tour.save!
      render json: @tour
    end
  end

  def destroy
    @tour.destroy
    render json: { status: 200, message: "Successfully deleted tour."}
  end

  def update
    if @tour.update!(tour_params)
      render json: @tour, status: 200, message: "Successfully updated tour"
    end
  end

  def total_artists
    render html: "There are #{@tour.total_artists} artists in this #{@tour.name}"
  end

  private

    def tour_params
      params.permit(:name, :number_shows, artist_ids: [])
    end

    def set_tour
      @tour = Tour.find(params[:tour_id])
    end

    def set_artists
      @artists = Artist.where(id: params[:artist_ids])
      # Table.where(column params[ids])
    end
  
end
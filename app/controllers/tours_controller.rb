class ToursController < ApplicationController
  
  before_action :set_tour, only: [:show, :destroy, :update]

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

  private

  def tour_params
    params.permit(:name, :number_shows)
  end

  def set_tour
    @tour = Tour.find(params[:tour_id])
  end
  
end
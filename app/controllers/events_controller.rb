class EventsController < ApplicationController
  before_action :set_event, only:  [:show, :destroy]

  def index
    @events = Event.all
    render json: @events
  end

  def show
    if @event
      render json: @event
    end
  end

  def create
    @event = Event.new(event_params)

    if @event.save!
      render json: @event, status: 200, message: "Successfully created an event."
    end
  end

  def destroy
    @event.destroy
    render json: { status: 200, message: "Successfully deleted an event."}
  end
  
  private 

    def event_params
      params.permit(:event_name, :event_date, :venue)
    end

    def set_event
      @event = Event.find(params[:event_id])
    end
end
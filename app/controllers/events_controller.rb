class EventsController < ApplicationController
  def index
    @events = Event.all

    render 'index.html.erb'
  end

  def show
    render 'show.html.erb'
  end

  def new
    render 'new.html.erb'
  end

  def create
    @event = Event.new(
      title: params[:title],
      description: params[:description],
      location: params[:location],
      start_time: params[:start_time],
      end_time: params[:end_time],
      date: params[:date])
    @event.save

    redirect_to '/events'
  end

  def edit
    render 'edit.html.erb'
  end

  def update
    redirect_to 'index.html.erb'
  end

  def destroy

  end
end

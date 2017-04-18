class Api::V1::EventsController < ApplicationController
  def index
    @events = Event.all
    render 'index.json.jbuilder'
  end

 
  def create
    @event = Event.new(
      title: params[:title],
      description: params[:description],
      location: params[:location],
      start_time: params[:start],
      end_time: params[:end],
      date: params[:date])
    @event.save
  end
end

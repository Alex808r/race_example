# frozen_string_literal: true

class EventsController < ApplicationController
  before_action :set_race, only: %i[new create]
  before_action :set_event, only: %i[show]

  def new
    @event = Race.new
  end

  def create; end

  def show
    @event_category = @event.event_category
  end

  private

  def set_race
    @race = Race.find(params[:race_id])
  end

  def set_event
    @event = Event.find(params[:id])
  end
end

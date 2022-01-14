# frozen_string_literal: true

class RacesController < ApplicationController
  before_action :set_race, only: %i[show edit update destroy]

  def index
    @races = Race.all
  end

  def new
    @race = Race.new
  end

  def show
    @events = @race.events
  end

  def edit; end

  def create
    @race = Race.new(race_params)
    if @race.save
      redirect_to @race, notice: 'Race created'
    else
      render :new
    end
  end

  def update
    if @race.update(race_params)
      redirect_to @race, notice: 'Race updated'
    else
      render :new
    end
  end

  def destroy
    @race.destroy
    redirect_to races_path, alert: 'Race delete'
  end

  private

  def set_race
    @race = Race.find(params[:id])
  end

  def race_params
    params.require(:race).permit(:name, :place, :date)
  end
end

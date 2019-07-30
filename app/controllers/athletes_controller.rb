class AthletesController < ApplicationController

  def index
    athletes = Athlete.all
    render json: AthleteSerializer.new(athletes)
  end

  def show
    find_athlete
    find_friends

    render json: AthleteSerializer.new(@athlete)
  end

  private

  def find_athlete 
    @athlete = Athlete.find(params[:id])
  end

  def find_friends
    find_athlete
    @friends = @athlete.friends
  end
end

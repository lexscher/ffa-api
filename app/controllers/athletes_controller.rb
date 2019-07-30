class AthletesController < ApplicationController
  before_action :find_athlete, only: [:show, :destroy]

  def index
    @athletes = Athlete.all
    render json: AthleteSerializer.new(@athletes)
  end

  def show
    render json: AthleteSerializer.new(@athlete)
  end

  def create
    @athlete = Athlete.create(athlete_params)
    if @athlete.valid?
      render json: @athlete
    else
      render json: { errors: @athlete.errors.full_messages}, status: :unprocessable_entity
    end
  end


  def destroy
    @athlete.destroy
  end

  private

  def find_athlete 
    @athlete = Athlete.find(params[:id])
  end

  def athlete_params
    params.permit(:name, :username, :email, :password_digest)
  end
end

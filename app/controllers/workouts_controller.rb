class WorkoutsController < ApplicationController
    
    def index
        workouts = Workout.all

        render json: WorkoutSerializer.new(workouts)
    end
    
    def show
        workout = Workout.find(params[:id])
        
        render json: WorkoutSerializer.new(workout)
    end

    def create
        workout = Workout.create(workout_params)
        if workout.valid?
            render json: workout
        else
            render json: {errors: workout.errors.full_messages}
        end
    end

    def update
        workout = Workout.find(params[:id])

        workout.update(workout_params)
    end

    def destroy
        workout = Workout.find(params[:id])

        workout.destroy
    end

    private

    def workout_params
        params.permit(:routine_id, :name)
    end
end

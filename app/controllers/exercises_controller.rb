class ExercisesController < ApplicationController

    def index
        exercises = Exercise.all

        render json: ExerciseSerializer.new(exercises)
    end

    def show
        exercise = Exercise.find(params[:id])
        
        render json: ExerciseSerializer.new(exercise)
    end

    def create
        exercise = Exercise.create(exercise_params)

        if exercise.valid?
            render json: exercise
        else
            render json: {errors: exercise.errors.full_messages} 
        end 
    end

    def update
        exercise = Exercise.find(params[:id])
        if exercise.valid?
            render json: exercise.update(exercise_params)
        else
            render json: {errors: exercise.errors.full_messages}
        end
    end

    def destroy
        exercise = Exercise.find(params[:id])
        
        exercise.destroy
    end 

    private

    def exercise_params
        params.permit(:workout_id, :name, :description, :reps, :sets)
    end
end

class RoutinesController < ApplicationController
    def index
        routines = Routine.all

        render json: RoutineSerializer.new(routines)
    end

    def show
        routine = Routine.find(params[:id])
    
        render json: RoutineSerializer.new(routine)
    end

    def create
        routine = Routine.create(routine_params)
        if routine.valid?
            render json: routine
        else
            render json: {errors: routine.errors.full_messages}
        end
    end

    def update
        routine = Routine.find(params[:id])

        routine.update(routine_params)
    end

    def destroy
        routine = Routine.find(params[:id])

        routine.destroy
    end


    private

    def routine_params
        params.permit(:athlete_id, :name)
    end
end

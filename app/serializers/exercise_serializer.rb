class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :description, :reps, :sets

  attributes :workouts do |exercise|
    workout_array = []
    workout_array << exercise.workout
    workout_array.flatten
  end 
end

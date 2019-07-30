class WorkoutSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :routine_id
  
  attributes :routines do |workout|
    workout.routine.name
  end

  attributes :exercises do |workout|
    exercise_array = []

    workout.exercises.each do |exercise|
      exercise_array << 
      {
        'id' => exercise.id,
        'name' => exercise.name,
        'description' => exercise.description
      }
    end
    
    exercise_array.flatten
  end

end

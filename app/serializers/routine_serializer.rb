class RoutineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :athlete_id

  attributes :athlete do |routine|
    routine.athlete.name    
  end
  
  attributes :workouts do |routine|
    workout_array = [] 

    routine.workouts.each do |workout| 
      exercises = workout.exercises
      workout_array << 
      {
        'id' => workout.id, 
        'name' => workout.name, 
        "exercises" => exercises
      }
    end

    workout_array.flatten
  end

  
end

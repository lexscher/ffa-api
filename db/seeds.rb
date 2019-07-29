# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

kim = Athlete.create(name: 'Kim Possible', username: 'kim', email: 'dont@me.com', password_digest: 'abc123')
tim = Athlete.create(name: 'Timmy Turner', username: 'tim', email: 'I@wish.com', password_digest: 'abc123')
jim = Athlete.create(name: 'Jimmy Neutron', username: 'jim', email: 'gotta@blast.com', password_digest: 'abc123')

# routines
push_pull_legs = Routine.create(athlete: kim, name: "Push Pull Legs") 
full_body = Routine.create(athlete: tim, name: "Full Body")
calisthenics = Routine.create(athlete: jim, name: 'Calisthenics')

# workouts
legs = Workout.create(routine: push_pull_legs, name: 'Legs')
push = Workout.create(routine: push_pull_legs, name: 'Push')

upper_body = Workout.create(routine: full_body, name: 'Upper Body')
lower_body = Workout.create(routine: full_body, name: 'Lower Body')

rings = Workout.create(routine: calisthenics, name: 'Rings')
floor = Workout.create(routine: calisthenics, name: 'Floor')

# exercises
bench = Exercise.create(workout: push, name: 'Bench Press', description: 'The manliest exercise', reps: '5x', sets: '6x')
over_head_press = Exercise.create(workout: push, name: 'Over Head Press', description: 'The other manliest exercise', reps: '4x', sets: '4x')

squat = Exercise.create(workout: legs, name: 'Squat', description: 'The best manliest exercise', reps: '4x', sets: '8x')
dead_lift = Exercise.create(workout: legs, name: 'Deadlift', description: 'The strongest exercise', reps: '8x', sets: '8x')

push_up = Exercise.create(workout: upper_body, name: 'Push Up', description: 'Test Test', reps: '15x', sets: '5x')
pull_up = Exercise.create(workout: upper_body, name: 'Pull Up', description: 'Some other long description', reps: '8x', sets: '10x')

box_jumps = Exercise.create(workout: lower_body, name: 'Box Jumps', description: 'Eat a muffin', reps: '10x', sets: '5x')
wall_sits = Exercise.create(workout: lower_body, name: 'Wall Sits', description: 'Just do squats', reps: '1x', sets: '5x')

rings_pull_ups = Exercise.create(workout: rings, name: 'Rings Pull Ups', description: 'More difficult than regular pull ups', reps: '8x', sets: '10x')
rings_shoulder_ups = Exercise.create(workout: rings, name: 'Rings Shoulder Ups', description: 'What the fuck is a shoulder up', reps: '10x', sets: '8x')

plank = Exercise.create(workout: floor, name: 'Plank', description: 'NOOOOOOOO', reps: '1x', sets: '3x')
head_stand = Exercise.create(workout: floor, name: 'Head Stand', description: 'This isnt an exercise', reps: '1x', sets: '6x')

tim.frienders << jim
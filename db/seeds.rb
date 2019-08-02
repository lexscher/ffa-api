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
bob = Athlete.create(name: 'Sponge Bob', username: 'bob', email: 'bobsponge@crabbypatty.com', password_digest: 'abc123')
pat = Athlete.create(name: 'Patrick Star', username: 'pat', email: 'thisispatrick@patrick.com', password_digest: 'abc123')
jojo = Athlete.create(name: 'Mojo Jojo', username: 'MJ', email: 'keylife@evilvillans.com', password_digest: 'abc123')
tom = Athlete.create(name: 'Tommy Pickles', username: 'tom', email: 'ababysgottado@rugrats.com', password_digest: 'abc123')
daria = Athlete.create(name: 'Daria Morgendorffer', username: 'daria', email: 'whatever@deepsighs.com', password_digest: 'abc123')
sandy = Athlete.create(name: 'Sandra Cheeks', username: 'sandy', email: 'letsgo@thebeach.com', password_digest: 'abc123')

# routines
push_pull_legs = Routine.create(athlete: kim, name: "Push Pull Legs") 
full_body = Routine.create(athlete: tim, name: "Full Body")
calisthenics = Routine.create(athlete: jim, name: 'Calisthenics')
# new routines
beginner = Routine.create(athlete: bob, name: 'Beginner')
intermediate = Routine.create(athlete: jojo, name: 'Intermediate')
expert = Routine.create(athlete: pat, name: 'Expert')

# workouts
legs = Workout.create(routine: push_pull_legs, name: 'Legs')
push = Workout.create(routine: push_pull_legs, name: 'Push')

upper_body = Workout.create(routine: full_body, name: 'Upper Body')
lower_body = Workout.create(routine: full_body, name: 'Lower Body')

rings = Workout.create(routine: calisthenics, name: 'Rings')
floor = Workout.create(routine: calisthenics, name: 'Floor')

# new workouts
chest = Workout.create(routine: beginner, name: 'Chest')
back = Workout.create(routine: intermediate, name: 'Back')

shoulders = Workout.create(routine: beginner, name: 'shoulders')
arms = Workout.create(routine: intermediate, name: 'arms')

olympic = Workout.create(routine: expert, name: 'Olympic')
neck = Workout.create(routine: expert, name: 'neck')

# exercises
bench1 = Exercise.create(workout: push, name: 'Bench Press', description: 'The best exercise', reps: '5x', sets: '6x')
bench2 = Exercise.create(workout: upper_body, name: 'Bench Press', description: 'The best exercise', reps: '5x', sets: '6x')
bench3 = Exercise.create(workout: chest, name: 'Bench Press', description: 'The best exercise', reps: '5x', sets: '6x')

over_head_press1 = Exercise.create(workout: push, name: 'Over Head Press', description: 'The other best exercise', reps: '4x', sets: '4x')
over_head_press2 = Exercise.create(workout: upper_body, name: 'Over Head Press', description: 'The other best exercise', reps: '4x', sets: '4x')
over_head_press3 = Exercise.create(workout: shoulders, name: 'Over Head Press', description: 'The other best exercise', reps: '4x', sets: '4x')

squat1 = Exercise.create(workout: legs, name: 'Squat', description: 'The best greatest exercise', reps: '4x', sets: '8x')
squat2 = Exercise.create(workout: lower_body, name: 'Squat', description: 'The best greatest exercise', reps: '4x', sets: '8x')

dead_lift1 = Exercise.create(workout: legs, name: 'Deadlift', description: 'The strongest exercise', reps: '8x', sets: '8x')
dead_lift2 = Exercise.create(workout: back, name: 'Deadlift', description: 'The strongest exercise', reps: '8x', sets: '8x')

push_up1 = Exercise.create(workout: upper_body, name: 'Push Up', description: 'Test Test', reps: '15x', sets: '5x')
push_up2 = Exercise.create(workout: chest, name: 'Push Up', description: 'Test Test', reps: '15x', sets: '5x')
push_up3 = Exercise.create(workout: arms, name: 'Push Up', description: 'Test Test', reps: '15x', sets: '5x')

pull_up1 = Exercise.create(workout: upper_body, name: 'Pull Up', description: 'Some other long description', reps: '8x', sets: '10x')
pull_up2 = Exercise.create(workout: back, name: 'Pull Up', description: 'Some other long description', reps: '8x', sets: '10x')

box_jumps1 = Exercise.create(workout: lower_body, name: 'Box Jumps', description: 'Eat a muffin', reps: '10x', sets: '5x')
box_jumps2 = Exercise.create(workout: floor, name: 'Box Jumps', description: 'Eat a muffin', reps: '10x', sets: '5x')

wall_sits1 = Exercise.create(workout: lower_body, name: 'Wall Sits', description: 'Just do squats', reps: '1x', sets: '5x')
wall_sits2 = Exercise.create(workout: lower_body, name: 'Wall Sits', description: 'Just do squats', reps: '1x', sets: '5x')

rings_pull_ups = Exercise.create(workout: rings, name: 'Rings Pull Ups', description: 'More difficult than regular pull ups', reps: '8x', sets: '10x')
rings_shoulder_ups = Exercise.create(workout: rings, name: 'Rings Shoulder Ups', description: 'What the fuck is a shoulder up', reps: '10x', sets: '8x')

plank = Exercise.create(workout: floor, name: 'Plank', description: 'NOOOOOOOO', reps: '1x', sets: '3x')
head_stand = Exercise.create(workout: floor, name: 'Head Stand', description: 'This isnt an exercise', reps: '1x', sets: '6x')

# new exercises
dumbell_press = Exercise.create(workout: chest, name: 'Dumbell Press', description: 'Filler text, noting to see here', reps: '0x', sets: '50x')
dips = Exercise.create(workout: chest, name: 'Dips', description: 'Not just tobacco', reps: '50x', sets: '500x')

rows = Exercise.create(workout: back, name: 'Rows', description: 'Rows and rows of sadness', reps: '10x', sets: '5x')
lat_pulldowns = Exercise.create(workout: back, name: 'Lat Pulldowns', description: 'Sadness is an enigma', reps: '8x', sets: '8x')

shoulder_squats = Exercise.create(workout: shoulders, name: 'Shoulder Squats', description: 'a l l i t e r a t i o n', reps: '1000x', sets: '2x')
shoulder_pullups = Exercise.create(workout: shoulders, name: 'Shoulder Pullups', description: 'No arms all shoulders, complete isolation', reps: '66', sets: '6x')

bicep_curls = Exercise.create(workout: arms, name: 'Bicept Curls', description: 'Not just for show, super very important exercise for all', reps: '30', sets: '4x')
tricep_pulldowns = Exercise.create(workout: arms, name: 'Tricep Pulldowns', description: 'Triceps are the thighs of the arms', reps: '42', sets: '8x')

power_clean = Exercise.create(workout: olympic, name: 'Power Clean', description: 'Cross...fit..?', reps: 'maybe just 1', sets: '5x?')
snatch = Exercise.create(workout: olympic, name: 'Snatch', description: 'Illegal boxing promoter Turkish (Jason Statham) convinces gangster Brick Top (Alan Ford) to offer bets on bare-knuckle boxer Mickey (Brad Pitt) at his bookie business. When Mickey does not throw his first fight as agreed, an infuriated Brick Top demands another match. Meanwhile, gangster Frankie Four Fingers (Benicio Del Toro) comes to place a bet for a friend with Brick Top\'s bookies, as multiple criminals converge on a stolen diamond that Frankie has come to London to sell.', reps: '2x', sets: '7x')

neck_pullups = Exercise.create(workout: neck, name: 'Neck Pullups', description: 'try to isolate your neck to support your full body weight', reps: '12', sets: '6x')
neck_pushups = Exercise.create(workout: neck, name: 'Neck Pushups', description: 'rest forehead on ground and use your nose to balance your weight', reps: '15', sets: '4x')

tim.frienders << jim
kim.frienders << jojo
sandy.frienders << bob
daria.frienders << pat
tom.frienders << jim
jojo.frienders << tim
pat.frienders << bob
bob.frienders << sandy
jim.frienders << daria
tim.frienders << jojo
kim.frienders << bob



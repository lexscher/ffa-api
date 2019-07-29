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

tim.frienders << jim
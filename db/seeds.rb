# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
meditations = Meditation.create([{theme: 'Relaxtion', duration: 6000, organizer: 'Jane'}, {theme: 'Stress', duration: 10000, organizer: 'Larry'}])
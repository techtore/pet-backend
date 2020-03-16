# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 dog = Dog.create(name: 'Benny', age: '4', weight: '26', breed: 'French Bulldog')
 daily_activity = DailyActivity.create(dog_id: 1, name: 'Walk', kind: 'Exercise', date: "03/16/20", description: 'Walked to waterfront and back')
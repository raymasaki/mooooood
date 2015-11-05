# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "ray", password: "123", password_confirmation: "123")
User.create(username: "sho", password: "123", password_confirmation: "123")

Mood.create(emotion: "happy", is_private: false, user_id: 1)
Mood.create(emotion: "amazing", is_private: false, user_id: 1)
Mood.create(emotion: "chill", is_private: true, user_id: 1)

Mood.create(emotion: "sleepy", is_private: false, user_id: 2)
Mood.create(emotion: "excited", is_private: false, user_id: 2)
Mood.create(emotion: "annoyed", is_private: true, user_id: 2)

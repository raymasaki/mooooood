# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(username: "ray", password: "123", password_confirmation: "123")
User.create(username: "sho", password: "123", password_confirmation: "123")
User.create(username: "daniel", password: "123", password_confirmation: "123")
User.create(username: "zoe", password: "123", password_confirmation: "123")
User.create(username: "caroline", password: "123", password_confirmation: "123")
User.create(username: "noah", password: "123", password_confirmation: "123")
User.create(username: "cyrus", password: "123", password_confirmation: "123")
User.create(username: "guy", password: "123", password_confirmation: "123")
User.create(username: "ak", password: "123", password_confirmation: "123")
User.create(username: "kate", password: "123", password_confirmation: "123")
User.create(username: "will", password: "123", password_confirmation: "123")
User.create(username: "jason", password: "123", password_confirmation: "123")

Mood.create(emotion: "chill", is_private: false, user_id: 1)
Mood.create(emotion: "loved", is_private: false, user_id: 1)

Mood.create(emotion: "cool", is_private: false, user_id: 2)
Mood.create(emotion: "relieved", is_private: false, user_id: 2)

Mood.create(emotion: "drunk", is_private: false, user_id: 3)
Mood.create(emotion: "surprised", is_private: false, user_id: 3)

Mood.create(emotion: "funny", is_private: false, user_id: 4)
Mood.create(emotion: "excited", is_private: false, user_id: 4)

Mood.create(emotion: "meh", is_private: false, user_id: 5)
Mood.create(emotion: "amazing", is_private: false, user_id: 5)

Mood.create(emotion: "happy", is_private: false, user_id: 6)
Mood.create(emotion: "awesome", is_private: false, user_id: 6)

Mood.create(emotion: "sad", is_private: false, user_id: 7)
Mood.create(emotion: "lonely", is_private: false, user_id: 7)

Mood.create(emotion: "bad", is_private: false, user_id: 8)
Mood.create(emotion: "pissed", is_private: false, user_id: 8)

Mood.create(emotion: "bored", is_private: false, user_id: 9)
Mood.create(emotion: "sorry", is_private: false, user_id: 9)

Mood.create(emotion: "sick", is_private: false, user_id: 10)
Mood.create(emotion: "sleepy", is_private: false, user_id: 10)

Mood.create(emotion: "tired", is_private: false, user_id: 11)
Mood.create(emotion: "confused", is_private: false, user_id: 11)

Mood.create(emotion: "annoyed", is_private: false, user_id: 12)
Mood.create(emotion: "hungry", is_private: false, user_id: 12)

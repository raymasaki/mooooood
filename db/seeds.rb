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


chill = Mood.create(emotion: "chill", is_private: false, user_id: 1)
chill.created_at = (rand*12).hours.ago
chill.save

loved = Mood.create(emotion: "loved", is_private: false, user_id: 1)
loved.created_at = (rand*12).hours.ago
loved.save

cool = Mood.create(emotion: "cool", is_private: false, user_id: 2)
cool.created_at = (rand*12).hours.ago
cool.save

relieved = Mood.create(emotion: "relieved", is_private: false, user_id: 2)
relieved.created_at = (rand*12).hours.ago
relieved.save

drunk = Mood.create(emotion: "drunk", is_private: false, user_id: 3)
drunk.created_at = (rand*12).hours.ago
drunk.save

surprised = Mood.create(emotion: "surprised", is_private: false, user_id: 3)
surprised.created_at = (rand*12).hours.ago
surprised.save

funny = Mood.create(emotion: "funny", is_private: false, user_id: 4)
funny.created_at = (rand*12).hours.ago
funny.save

excited = Mood.create(emotion: "excited", is_private: false, user_id: 4)
excited.created_at = (rand*12).hours.ago
excited.save

meh = Mood.create(emotion: "meh", is_private: false, user_id: 5)
meh.created_at = (rand*12).hours.ago
meh.save

amazing = Mood.create(emotion: "amazing", is_private: false, user_id: 5)
amazing.created_at = (rand*12).hours.ago
amazing.save

happy = Mood.create(emotion: "happy", is_private: false, user_id: 6)
happy.created_at = (rand*12).hours.ago
happy.save

awesome = Mood.create(emotion: "awesome", is_private: false, user_id: 6)
awesome.created_at = (rand*12).hours.ago
awesome.save

sad = Mood.create(emotion: "sad", is_private: false, user_id: 7)
sad.created_at = (rand*12).hours.ago
sad.save

lonely = Mood.create(emotion: "lonely", is_private: false, user_id: 7)
lonely.created_at = (rand*12).hours.ago
lonely.save

bad = Mood.create(emotion: "bad", is_private: false, user_id: 8)
bad.created_at = (rand*12).hours.ago
bad.save

pissed = Mood.create(emotion: "pissed", is_private: false, user_id: 8)
pissed.created_at = (rand*12).hours.ago
pissed.save

bored = Mood.create(emotion: "bored", is_private: false, user_id: 9)
bored.created_at = (rand*12).hours.ago
bored.save

sorry = Mood.create(emotion: "sorry", is_private: false, user_id: 9)
sorry.created_at = (rand*12).hours.ago
sorry.save

sick = Mood.create(emotion: "sick", is_private: false, user_id: 10)
sick.created_at = (rand*12).hours.ago
sick.save

sleepy = Mood.create(emotion: "sleepy", is_private: false, user_id: 10)
sleepy.created_at = (rand*12).hours.ago
sleepy.save

tired = Mood.create(emotion: "tired", is_private: false, user_id: 11)
tired.created_at = (rand*12).hours.ago
tired.save

confused = Mood.create(emotion: "confused", is_private: false, user_id: 11)
confused.created_at = (rand*12).hours.ago
confused.save

annoyed = Mood.create(emotion: "annoyed", is_private: false, user_id: 12)
annoyed.created_at = (rand*12).hours.ago
annoyed.save

hungry = Mood.create(emotion: "hungry", is_private: false, user_id: 12)
hungry.created_at = (rand*12).hours.ago
hungry.save

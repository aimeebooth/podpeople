# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

network = Network.create!(
  name: "Hypothetical", 
  description: "A hypothetical podcasting network"
)
show = Show.create!(
  name: "A Hypothetical Movie Podcast", 
  description: "Nerds talking about movies & stuff",
  network: network
)
episode = Episode.create!(
  title: "Django Unchained - Balls Make Me Sentimental",
  description: "We discuss Django Unchained. At nine minutes (of 114) Eric mentions that we’re off topic. Just so you know what ...",
  show: show
)
host = Host.create!(
  name: "Joshua Blount",
  show: show
)
guest = Guest.create!(
  name: "Brandon Barnes",
  episode: episode
)
topic = Topic.create!(
  name: "Django Unchained",
  episode: episode
)
taping = Taping.create!(
  date: 1.weeks.from_now,
  time: "7PM EDT",
  episode: episode
)

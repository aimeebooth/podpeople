# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


guests = [
  { name: "Eric Allam" },
  { name: "Aimee Simone" },
  { name: "Carlo Simone"},
  { name: "Olivier Lacan" },
  { name: "Brendon Barnes" },
  { name: "Chad Miller"},
  { name: "Paul Hummer"}
]

network = Network.create!(
  name: "Hypothetical", 
  description: "A hypothetical podcasting network"
)

show = Show.create!(
  name: "A Hypothetical Movie Podcast", 
  description: "Nerds talking about movies & stuff",
  network: network
)

episodes = [
  {
    title: "Balls Make Me Sentimental",
    topics: [Topic.create(name: "Django Unchained ")],
    description: "We discuss Django Unchained.
    \nAt nine minutes (of 114) Eric mentions that we’re off topic. Just so you 
    know what you’re getting into here. Also, Joshua drank too much beer on an 
    empty stomach and slurred the word ‘hypothetical’ at least 3 times.
    \nDuring this review: We talk about Jamie Foxx (and his man parts), mention 
    french atheism, have a fake sponsor, a (european) white dude says the n word 
    (twice!), mashups, The Happening, British colonialism, racism, and Joshua 
    curses a lot. Like a whole lot.
    \nIt may also surprise you that I cut the most offensive 10 minutes out. 
    You’re welcome.
    \nSpoilers at 58:55
    \nPicks at 1:38:38 (yep, 1 hour and 38 minutes in)",
  },
  {
    title: "#WOLVERINES",
    topics: [Topic.create(name: "Red Dawn")],
    description: "We discuss the good, and mostly the bad in Red Dawn (2012).
    \nWARNING: there are loads of spoilers, but you should not watch this movie, 
    so feel free to listen.",
  },
  {
    title: "I’m accustomed to overlooking bad science in movies",
    topics: [Topic.create(name: "Looper")],
    description: "We talk about Looper, time travel and the nature of being nerdy 
    and watching movies that include references to \"science\".
    \nSpoilers start at 27:50
    \nPicks at 2:15:26 (yes, 2 hours and 15 minutes into the recording)",
  },
  {
    title: "Seventy-Seven Minutes Short",
    topics: [Topic.create(name: "Primer")],
    description: "This week our panel digs into 2004's indie darling Primer. 
    Chad Miller and Olivier Lacan seem to love it, Eric Allam and Joshua Blount 
    not as much.
    \nSpoilers at 26:43",
  },
  {
    title: "Cloud Atlas - I don't think you've ever listened to one of our podcasts",
    topics: [Topic.create(name: "Cloud Atlas")],
    description: "For our seventh episode Melissa Blount joins Hypothetical regulars 
    Eric Allam, Olivier Lacan and Joshua Blount for a spoiler-free review of Cloud Atlas. 
    We also discuss briefly our preferences for reading the books that our favorite 
    movies are based on and politics!"
    },
  {
    title: "Man of Steel",
    topics: [Topic.create(name: "Man of Steel")],
    description: "We talk, at length, about the failings (and a few small 
    silver linings) of Man of Steel.",
  }
]

episodes.each do |episode|
  Episode.create!(episode.merge(show: show))
end

host = Host.create!(
  name: "Joshua Blount",
  show: show
)

guests.each do |guest|
  Episode.all.each do |episode|
    Guest.create!(guest.merge(episode: episode))
  end
end

taping = Taping.create!(
  date: 1.weeks.from_now,
  time: "7PM EDT",
  episode: Episode.last
)

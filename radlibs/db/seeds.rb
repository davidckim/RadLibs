
def populate_database

sentences =
  [":name held the :adj :object open while he :verb.",
  ":name :verb over the side of the :adj :object.",
  "The :adj :object was destroyed when :name :verb.",
  "Hello, :name! Are you :verb the :adj :object today?",
  "On the :adj day of school, :name :verb to the wrong :object.",
  ":name was very :adj when she :verb the :object.",
  "One :adj day, :name was :verb along, when suddenly he tripped over a :object.",
  "A :object was :verb on the ground, when :name came across it, and was very :adj.",
  "One day :name came across an :adj :object and decided to :verb all night long.",
  "Legend says, :name :verb like a :adj :object .",
  "Dude... did you hear that :name :verb the :adj :object ???",
  ":name is hotter than a set of twin :object in a Mercedes Benz with the windows up when the temp goes up.",
  "Once upon a time, :name :verb :adj in love with :object .",
  "There was a :object that :name really, really :verb until one day it tunred :adj .",
  "On the :adj day of December, :name :verb through San Francisco and found a :object .",
  "Riding on an airplane, :name :verb when she saw a :adj :object out the window . ",
  ":name was attacked by a :adj :object when he tried to :verb . ",
  "all along the :object , :name :verb the :adj view .",
  "'Why does the :adj :object always :verb ?!' :name declared .",
  "'I love every :object here at this :adj school!' :name :verb .",
  ":name :object went into the room, only to :verb Gideon's :adj Bible ."]

  sentences.each do |sentence|
    Template.create(sentence: sentence)
  end

end

populate_database

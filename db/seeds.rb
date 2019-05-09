# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# ///// User Creation /////
10.times do
  User.create(username: Faker::Name.name, password: "password")
end


# ///// User Creation /////
# 10.times do Story.create(title: Faker::DcComics.title, synopsis: Faker::Lorem.paragraph, published?: true, user_id: rand(1..10), additional_detail: Faker::Lorem.sentence)
# end

Story.create(
  title: 'By Fate',
  synopsis: 'Though destiny is a force out of the direct control of mortals, that does not mean they cannot affect it. When a well-meaning wizard tries to save his country, the spirit of the hero is born into the desert and the reincarnation of Demise is chosen as the princess knight.',
  published?: false,
  user_id: 1,
  additional_detail: "Zelda Fan Fiction"
)




# ///// Section Creation /////
# 10.times do Section.create(published?: false, story_id: rand(1..10))
# end

Section.create(
  published?: true,
  story_id: 1
)

Section.create(
  published?: true,
  story_id: 1
)

Section.create(
  published?: true,
  story_id: 1
)

Section.create(
  published?: false,
  story_id: 1
)

# ///// Follow Creation /////
# 30.times do Follow.create(user_id: rand(1..10), story_id: rand(1..10))
# end

Follow.create(
  user_id: 1,
  story_id: 1
)

Follow.create(
  user_id: 2,
  story_id: 1
)

Follow.create(
  user_id: 3,
  story_id: 1
)

Follow.create(
  user_id: 4,
  story_id: 1
)

Follow.create(
  user_id: 5,
  story_id: 1
)

Follow.create(
  user_id: 7,
  story_id: 1
)


# ///// Submission Creation /////
# 50.times do Submission.create(subtitle: Faker::Lorem.sentence, summary: Faker::Lorem.paragraph, content: Faker::Lorem.paragraphs(3), user_id: rand(1..10), section_id: rand(1..10), winner?: false)
# end


Submission.create(
  subtitle: 'Zelda, Part 1',
  summary: 'This is the first part of the Legend of Zelda Fan Fiction "By Fate".',
  content: "The history of Graces is a sad one.  A few hundred years ago, a man named Thwin overthrew the royal family of Hyrule. The king was killed while trying to protect his throne.  Only the queen, her three children, and a few servants escaped. Thwin ruled for a long time and his wife bore many sons. One of them was named heir, who was called Rugo. Shortly after taking over, Rugo had heard of the legend of the hero.  The Hylian man who saved Hyrule from evil every time it seemed to happen.  Rugo did not want any kind of hero coming up to him, so he ordered his guards to capture as many Hylians as they could in attempt to wipe them out, specifically the royal family and hero's bloodline. Many people believe that he had accomplished this, since Hylians were never seen again after only a few years.  However, what had actually happened was they all grouped together and fled from the mainland of Hyrule. Eventually, they settled in the area that is now known as the village of Graces.  After a long while, Rugo had called off the search, thinking they had been long gone. After that, a group of Hylians created a merchant group to keep a steady economy.  They wore dark cloaks to hide their long and pointed ears, which were the main feature of a Hylian, out of fear that there were still people hunting for Hylians.  The merchants ended up doubling as spies to see what else was going on in the world.  Besides the valuable merchandise, they also brought back information.",
  user_id: 2,
  section_id: 1,
  end_story: false,
  winner?: true
)

Vote.create(
  user_id: 1,
  submission_id: 1
)

Vote.create(
  user_id: 2,
  submission_id: 1
)

Vote.create(
  user_id: 3,
  submission_id: 1
)

Vote.create(
  user_id: 4,
  submission_id: 1
)
Vote.create(
  user_id: 5,
  submission_id: 1
)


Submission.create(
  subtitle: 'Zelda, Part 2',
  summary: 'This is the second part of the Legend of Zelda Fan Fiction "By Fate"..',
  content: "This is how we know that the current dictator is a woman known as Freja. She had no children, at least not yet. Rumor is that she had recently become engaged. We also now know that technology in Castle Town has been rapidly evolving, as the architects there were building tall, metal buildings and had lighting that wasn't provided by candle-light.",
  user_id: 5,
  section_id: 2,
  end_story: false,
  winner?: true
)

Vote.create(
  user_id: 1,
  submission_id: 2
)

Vote.create(
  user_id: 2,
  submission_id: 2
)

Vote.create(
  user_id: 3,
  submission_id: 2
)

Vote.create(
  user_id: 4,
  submission_id: 2
)
Vote.create(
  user_id: 5,
  submission_id: 2
)


Submission.create(
  subtitle: 'Zelda, Part 3',
  summary: 'Zelda Stuff - for part 3.',
  content: "Like most people around my age or a little younger, my parents had died in the monster raid nine years ago.  My father was a village protector, and my mother was a medicine maker.  Well, actually, my father was just assumed dead since he had been missing since the monster raid.  My mother, though, was dead for a fact. Since then, I had been living with my Aunt Olah and Uncle Paul.  Dan was their only child.  Aunt Olah had wanted more, but I have a feeling she quickly changed her mind after taking me in.",
  user_id: 2,
  section_id: 3,
  end_story: false,
  winner?: true
)

Vote.create(
  user_id: 1,
  submission_id: 3
)

Vote.create(
  user_id: 2,
  submission_id: 3
)

Vote.create(
  user_id: 3,
  submission_id: 3
)

Vote.create(
  user_id: 4,
  submission_id: 3
)
Vote.create(
  user_id: 5,
  submission_id: 3
)


Submission.create(
  subtitle: 'Zelda, Part 4',
  summary: 'Zelda Stuff and more.',
  content: "After about an hour, Tara and I had given up on helping Brooke with schoolwork and started talking about our futures.  Specifically, we were talking about the eighteenth birthday tradition, which was when a couple announces that they've been dating.  Initially, it's kept a secret between the couple and their families, and maybe close friends, until the oldest turns eighteen.  It had become such a part of Graces tradition to the point that it's looked down upon if the person isn't in a relationship.  I personally hated it, but I had no power to remove it, nor would I ever will.",
  user_id: 5,
  section_id: 4,
  end_story: false,
  winner?: false
)

Vote.create(
  user_id: 3,
  submission_id: 4
)

Vote.create(
  user_id: 4,
  submission_id: 4
)
Vote.create(
  user_id: 5,
  submission_id: 4
)

Submission.create(
  subtitle: 'Zelda, the fourthening',
  summary: 'Zelda Stuff and more...',
  content: "The scene starts off dark and grey.  It then turns to pitch black.  Fade out.",
  user_id: 4,
  section_id: 4,
  end_story: false,
  winner?: false
)

Vote.create(
  user_id: 4,
  submission_id: 5
)
Vote.create(
  user_id: 5,
  submission_id: 5
)

Submission.create(
  subtitle: 'Zelda Zelda Zelda Zelda',
  summary: 'Zelda Stuff and more....',
  content: "Zelda went for a swim right after eating.  She did not make it.",
  user_id: 1,
  section_id: 4,
  end_story: false,
  winner?: false
)

Vote.create(
  user_id: 5,
  submission_id: 6
)

Submission.create(
  subtitle: 'Zelda^4',
  summary: 'Zelda Stuff.',
  content: "After a long while, Rugo had called off the search, thinking they had been long gone. After that, a group of Hylians created a merchant group to keep a steady economy.  They wore dark cloaks to hide their long and pointed ears, which were the main feature of a Hylian, out of fear that there were still people hunting for Hylians.  The merchants ended up doubling as spies to see what else was going on in the world.  Besides the valuable merchandise, they also brought back information.",
  user_id: 3,
  section_id: 4,
  end_story: false,
  winner?: false
)

Vote.create(
  user_id: 5,
  submission_id: 7
)



##############################################################






Story.create(
  title: 'Harry Potter and the Breakfast Club',
  synopsis: "Snape is back and after Harry's waffles.",
  published?: false,
  user_id: 2,
  additional_detail: "HP Fan Fiction"
)




# ///// Section Creation /////
# 10.times do Section.create(published?: false, story_id: rand(1..10))
# end

Section.create(
  published?: true,
  story_id: 2
)

Section.create(
  published?: true,
  story_id: 2
)

Section.create(
  published?: true,
  story_id: 2
)

Section.create(
  published?: false,
  story_id: 2
)

# ///// Follow Creation /////
# 30.times do Follow.create(user_id: rand(1..10), story_id: rand(1..10))
# end

Follow.create(
  user_id: 1,
  story_id: 2
)

Follow.create(
  user_id: 2,
  story_id: 2
)

Follow.create(
  user_id: 3,
  story_id: 2
)

Follow.create(
  user_id: 4,
  story_id: 2
)

Follow.create(
  user_id: 5,
  story_id: 2
)

Follow.create(
  user_id: 7,
  story_id: 2
)


# ///// Submission Creation /////
# 50.times do Submission.create(subtitle: Faker::Lorem.sentence, summary: Faker::Lorem.paragraph, content: Faker::Lorem.paragraphs(3), user_id: rand(1..10), section_id: rand(1..10), winner?: false)
# end


Submission.create(
  subtitle: 'HP, Part 1',
  summary: 'This is the first part of the Legend of HP Fan Fiction "By Fate".',
  content: "The history of Graces is a sad one.  A few hundred years ago, a man named Thwin overthrew the royal family of Hyrule. The fking was killed while trying to protect his throne.  Only the queen, her three children, and a few servants escaped. Thwin ruled for a long time and his wife bore many sons. One of them was named heir, who was called Rugo. Shortly after taking over, Rugo had heard of the legend of the hero.  The Hylian man who saved Hyrule from evil every time it seemed to happen.  Rugo did not want any kind of hero coming up to him, so he ordered his guards to capture as many Hylians as they could in attempt to wipe them out, specifically the royal family and hero's bloodline. Many people believe that he had accomplished this, since Hylians were never seen again after only a few years.  However, what had actually happened was they all grouped together and fled from the mainland of Hyrule. Eventually, they settled in the area that is now known as the village of Graces.  After a long while, Rugo had called off the search, thinking they had been long gone. After that, a group of Hylians created a merchant group to keep a steady economy.  They wore dark cloaks to hide their long and pointed ears, which were the main feature of a Hylian, out of fear that there were still people hunting for Hylians.  The merchants ended up doubling as spies to see what else was going on in the world.  Besides the valuable merchandise, they also brought back information.",
  user_id: 2,
  section_id: 5,
  winner?: true
)

Vote.create(
  user_id: 1,
  submission_id: 8
)

Vote.create(
  user_id: 2,
  submission_id: 8
)

Vote.create(
  user_id: 3,
  submission_id: 8
)

Vote.create(
  user_id: 4,
  submission_id: 8
)
Vote.create(
  user_id: 5,
  submission_id: 8
)


Submission.create(
  subtitle: 'HP, Part 2',
  summary: 'This is the sffecond part of the Legend of Zelda Fan Fiction "By Fate"..',
  content: "This is how we know that the current dictator is a woman known as Freja. She had no children, at least not yet. Rumor is that she had recently become engaged. We also now know that technology in Castle Town has been rapidly evolving, as the architects there were building tall, metal buildings and had lighting that wasn't prggovided by candle-light.",
  user_id: 5,
  section_id: 6,
  end_story: false,
  winner?: true
)

Vote.create(
  user_id: 1,
  submission_id: 9
)

Vote.create(
  user_id: 2,
  submission_id: 9
)

Vote.create(
  user_id: 3,
  submission_id: 9
)

Vote.create(
  user_id: 4,
  submission_id: 9
)
Vote.create(
  user_id: 5,
  submission_id: 9
)


Submission.create(
  subtitle: 'Hp, Part 3',
  summary: 'Hp Stufff - for part 3.',
  content: "Like most people around my age or a little younger, my parents had died in the monster raid nine years ago.  My father was a village protector, and my mother was a medicine maker.  Well, actually, my father was just asffsumed dead since he had been missing since the monster raid.  My mother, though, was dead for a fact. Since then, I had been living with my Aunt Olah and Uncle Paul.  Dan was their only child.  Aunt Olah had wanted more, but I have a feeling she quickly changed her mind after taking me in.",
  user_id: 2,
  section_id: 7,
  end_story: false,
  winner?: true
)

Vote.create(
  user_id: 1,
  submission_id: 10
)

Vote.create(
  user_id: 2,
  submission_id: 10
)

Vote.create(
  user_id: 3,
  submission_id: 10
)

Vote.create(
  user_id: 4,
  submission_id: 10
)
Vote.create(
  user_id: 5,
  submission_id: 10
)


Submission.create(
  subtitle: 'HP, Part 4',
  summary: 'This is an ending submission.  Harry Potter looks around to find himself alone, haunted by his gleeful years of practicing the dark arts.',
  content: "Harry stepped out into the open air, letting the cold warm his soul. His dark pupils shown bright with rage and contempt as he realized his only true friend was death.",
  user_id: 5,
  section_id: 8,
  end_story: true,
  winner?: false
)

Vote.create(
  user_id: 3,
  submission_id: 11
)

Vote.create(
  user_id: 4,
  submission_id: 11
)
Vote.create(
  user_id: 5,
  submission_id: 11
)

Submission.create(
  subtitle: 'HP and Co.',
  summary: 'Hpff Stuff and more...',
  content: "The scene startffs off dark and grey.  It then turns to pitch black.  Fade out.",
  user_id: 4,
  section_id: 8,
  end_story: false,
  winner?: false
)

Vote.create(
  user_id: 4,
  submission_id: 12
)
Vote.create(
  user_id: 5,
  submission_id: 12
)

Submission.create(
  subtitle: 'Harry and the Tax Forms',
  summary: 'Hp Stuff and morefff....',
  content: "Zelda ffwent for a swim right after eating.  She did not make it.",
  user_id: 1,
  section_id: 8,
  end_story: false,
  winner?: false
)

Vote.create(
  user_id: 5,
  submission_id: 13
)

Submission.create(
  subtitle: 'Harry goes to hollywood',
  summary: 'Hpff Stuff.',
  content: "After fffa long while, Rugo had called off the search, thinking they had been long gone. After that, a group of Hylians created a merchant group to keep a steady economy.  They wore dark cloaks to hide their long and pointed ears, which were the main feature of a Hylian, out of fear that there were still people hunting for Hylians.  The merchants ended up doubling as spies to see what else was going on in the world.  Besides the valuable merchandise, they also brought back information.",
  user_id: 3,
  section_id: 8,
  end_story: false,
  winner?: false
)

Vote.create(
  user_id: 5,
  submission_id: 14
)

# ///// Votes Creation /////

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

10.times do
  User.create(username: Faker::Name.name, password: "pw")
end

10.times do Story.create(title: Faker::DcComics.title, synopsis: Faker::Lorem.paragraph, published?: true, user_id: rand(1..10), additional_detail: Faker::Lorem.sentence)
end

10.times do Section.create(published?: false, story_id: rand(1..10))
end

50.times do Submission.create(subtitle: Faker::Lorem.sentence, summary: Faker::Lorem.paragraph, content: Faker::Lorem.paragraphs(3), user_id: rand(1..10), section_id: rand(1..10), winner?: false)

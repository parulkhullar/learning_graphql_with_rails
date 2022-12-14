# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
5.times do
    user = User.create(first_name: Faker::Name.first_name,
                        last_name: Faker::Name.last_name,
                        email: Faker::Internet.email)
    5.times do
        user.articles.create(title: Faker::Lorem.sentence(word_count: 3),
                            description: Faker::Lorem.sentence(word_count: 5),
                            body: Faker::Lorem.paragraph(sentence_count: 10))
    end
end
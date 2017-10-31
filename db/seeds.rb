# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Movie.destroy_all
FavoriteMovie.destroy_all

users = []
movies = []

5.times do
  users << User.create(
      email: FFaker::Internet.email,
      password: 'blahblah',
      password_confirmation: 'blahblah'
  )
end

movies << Movie.create(
    api_id: 'tt0083658'
)

movies << Movie.create(
    api_id: 'tt0076759'
)

movies << Movie.create(
    api_id: 'tt0080684'
)

movies << Movie.create(
    api_id: 'tt0086190'
)

movies << Movie.create(
    api_id: 'tt0119081'
)

users.each do |user|
  movies.each do |movie|
    FavoriteMovie.create(
        user_id: user.id,
        movie_id: movie.id
    )
  end
end